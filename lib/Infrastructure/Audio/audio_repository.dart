import 'dart:developer';

import 'package:audio_service/audio_service.dart';

import 'package:just_audio/just_audio.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => MyAudioHandler(),
    config: AudioServiceConfig(
      androidNotificationChannelId: 'com.xenotrix.xenotune.audio',
      androidNotificationChannelName: 'Audio Service',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
    ),
  );
}

class MyAudioHandler extends BaseAudioHandler {
  final player = AudioPlayer();
  final List<AudioSource> playlist = [];

  MyAudioHandler() {
    initialNotify();
    listenForCurrentSongIndexChanges();
  }

  void initialNotify() {
    player.playbackEventStream.listen((PlaybackEvent event) {
      final playing = player.playing;
      playbackState.add(
        playbackState.value.copyWith(
          controls: [
            MediaControl.skipToPrevious,
            playing ? MediaControl.pause : MediaControl.play,

            MediaControl.skipToNext,
          ],

          androidCompactActionIndices: const [0, 1, 2],
          processingState:
              const {
                ProcessingState.idle: AudioProcessingState.idle,
                ProcessingState.loading: AudioProcessingState.loading,
                ProcessingState.buffering: AudioProcessingState.buffering,
                ProcessingState.ready: AudioProcessingState.ready,
                ProcessingState.completed: AudioProcessingState.completed,
              }[player.processingState]!,

          // repeatMode:
          //     const {LoopMode.one: AudioServiceRepeatMode.one}[player
          //         .loopMode]!,
          playing: playing,

          queueIndex: event.currentIndex,
        ),
      );
    });
  }

  void listenForCurrentSongIndexChanges() {
    player.currentIndexStream.listen((index) {
      final currentQueue = queue.value;
      if (index == null || index >= currentQueue.length) return;
      final currentItem = currentQueue[index];
      mediaItem.add(currentItem);
    });
  }

  @override
  Future<void> addQueueItems(List<MediaItem> mediaItems) async {
    final audioSource = mediaItems.map(createAudioSource).toList();
    playlist.clear();
    playlist.addAll(audioSource.toList());

    final newQueue = queue.value..addAll(mediaItems);
    queue.add(newQueue);
    try {
      await player.setAudioSources(playlist);
      log('add Successfully');
    } catch (e) {
      log('add UnSuccessfully : $e');
    }
  }

  UriAudioSource createAudioSource(MediaItem mediaitem) {
    return AudioSource.uri(
      Uri.parse(mediaitem.extras!['url'] as String),
      tag: mediaitem,
    );
  }

  @override
  Future<void> pause() async {
    await player.pause();
    playbackState.add(
      playbackState.value.copyWith(
        playing: false,
        controls: [
          MediaControl.skipToPrevious,
          MediaControl.play,
          MediaControl.skipToNext,
        ],
      ),
    );
  }

  @override
  Future<void> play() async {
    player.play();
    playbackState.add(
      playbackState.value.copyWith(
        playing: true,
        controls: [
          MediaControl.skipToPrevious,
          MediaControl.pause,
          MediaControl.skipToNext,
        ],
      ),
    );
  }

  @override
  Future<void> stop() => player.stop();

  @override
  Future<void> skipToNext() => player.seekToNext();

  @override
  Future<void> skipToPrevious() => player.seekToPrevious();

  @override
  Future<void> skipToQueueItem(int index) async {
    if (index < 0 || index >= queue.value.length) return;
    if (player.shuffleModeEnabled) {
      index = player.shuffleIndices[index];
    }
    player.seek(Duration.zero, index: index);
  }

  @override
  Future<void> removeQueueItemAt(int index) async {
    playlist.removeAt(index);

    final newQueue = queue.value..removeAt(index);
    queue.add(newQueue);
  }

  @override
  Future<void> customAction(String name, [Map<String, dynamic>? extras]) async {
    if (name == 'dispose') {
      await player.dispose();
      super.stop();
    }
  }
}
