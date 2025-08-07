import 'dart:developer';

import 'package:audio_service/audio_service.dart';

import 'package:just_audio/just_audio.dart';
import 'package:xenotune_flutter_dev/Domain/Http%20req/i_http_repo.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Http%20request/http_req.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => MyAudioHandler(HttpReq()),
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
  final IHttpRepo iHttpRepo;

  MyAudioHandler(this.iHttpRepo) {
    initialNotify();
    initLoopingPlayback();
    // listenForCurrentSongIndexChanges();
  }

  void initialNotify() async {
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

  // void listenForCurrentSongIndexChanges() {
  //   player.currentIndexStream.listen((index) async {
  //     final currentQueue = queue.value;
  //     log('current index insideStram: $index');
  //     if (index == null || index >= currentQueue.length) return;
  //     // final currentItem = currentQueue[index];
  //     // mediaItem.add(currentItem);
  //     if (_lastindex != index) {
  //       _lastindex = index;
  //       try {
  //         await iHttpRepo.replaceSlot();
  //         log('replaceSlot called');
  //       } catch (e) {
  //         log('error while fetching current index: $e');
  //       }
  //     }
  //   });
  // }

  int _trackToggle = 0;
  int? _lastFetchedIndex;
  bool _canChange = true;
  bool _isFetching = false;
  bool _isRemovingOldest = false;

  void initLoopingPlayback() {
    player.currentIndexStream.listen((index) async {
      final currentQueue = queue.value;
      log('Current index: $index');
      log('Queue length: ${currentQueue.length}');
      log('playlist length: ${playlist.length}');
      log('player sequence length: ${player.sequence.length}');

      if (index == null || index == _lastFetchedIndex || _isFetching) return;

      // if (_lastReplaceIndex != index) {
      //   _lastReplaceIndex = index;
      //   if (_lastReplaceIndex == index) return;

      //   // Now it's safe to call replaceSlot
      //   _lastReplaceIndex = index;
      // _canChange = true;
      // if (_canChange || index == 0) return;
      if (index != 0) {
        try {
          await iHttpRepo.replaceSlot();
          log('✅ replaceSlot called at index: $index');
          queue.add(queue.value..removeAt(0));
          await player.removeAudioSourceAt(0);
          playlist.removeAt(0);
          log('🗑️ Removed oldest track from queue');
        } catch (e) {
          log('❌ Error in replaceSlot: $e');
        }
      }

      // 🚫 Avoid fetching if index already fetched or currently fetching
      if (index == _lastFetchedIndex ||
          _isFetching ||
          player.sequence.length > 2) {
        return;
      }
      _lastFetchedIndex = index;
      _isFetching = true;

      if (player.sequence.length < 2) {
        await Future.delayed(const Duration(seconds: 15));

        _trackToggle = (_trackToggle + 1) % 2;
        log('Track toggle: $_trackToggle');
        final nextFile = _trackToggle == 0 ? 'M1.mp3' : 'M2.mp3';

        final result = await iHttpRepo.fetcAgainhMusic(nextFile);
        result.fold(
          (f) {
            log('❌ Prefetch error: $f');
          },
          (su) async {
            final MediaItem nextItem = MediaItem(
              id: nextFile,
              title: 'Loop Music',
              extras: {'url': su},
            );
            final audioSource = createAudioSource(nextItem);

            try {
              playlist.add(audioSource);
              await player.insertAudioSource(
                player.sequence.length,
                audioSource,
              );
              final newQueue = queue.value..add(nextItem);
              queue.add(newQueue);
              log('✅ Prefetched and added: $nextFile');
            } catch (e) {
              log('❌ Failed to add: $e');
            }

            // Remove first item if queue is too long
            // if (player.sequence.length > 4 && !_isRemovingOldest) {
            //   _isRemovingOldest = true;
            //   try {
            //     _canChange = false;
            //     queue.value.removeAt(0);
            //     await player.removeAudioSourceAt(0);
            //     playlist.removeAt(0);
            //     log('🗑️ Removed oldest track from queue');
            //   } catch (e) {
            //     log('⚠️ Remove failed: $e');
            //   } finally {
            //     Future.delayed(const Duration(milliseconds: 1500), () {
            //       _canChange = true;
            //       _isRemovingOldest = false;
            //     });
            //   }
            // }
          },
        );
      }

      _isFetching = false;
    });
  }

  // int _trackToggle = 0;
  // int? _lastFetchedIndex;
  // bool _canChange = true;
  // bool _isFetching = false;
  // bool _isRemovingOldest = false;

  // void initLoopingPlayback() {
  //   player.currentIndexStream.listen((index) async {
  //     final currentQueue = queue.value;
  //     log('🎧 Current index: $index');
  //     log('🎶 Queue length: ${currentQueue.length}');

  //     if (index == null || index == _lastFetchedIndex || _isFetching) return;

  //     _lastFetchedIndex = index;
  //     _isFetching = true;

  //     if (index != 0 && _canChange) {
  //       try {
  //         await iHttpRepo.replaceSlot();
  //         log('✅ replaceSlot called at index: $index');
  //       } catch (e) {
  //         log('❌ Error in replaceSlot: $e');
  //       }
  //     }

  //     await Future.delayed(const Duration(seconds: 15));

  //     _trackToggle = (_trackToggle + 1) % 2;
  //     log('🎵 Track toggle: $_trackToggle');

  //     final nextFile = _trackToggle == 0 ? 'M1.mp3' : 'M2.mp3';

  //     final result = await iHttpRepo.fetcAgainhMusic(nextFile);
  //     await result.fold(
  //       (f) async {
  //         log('❌ Prefetch error: $f');
  //       },
  //       (su) async {
  //         final MediaItem nextItem = MediaItem(
  //           id: nextFile,
  //           title: 'Loop Music',
  //           extras: {'url': su},
  //         );
  //         final audioSource = createAudioSource(nextItem);

  //         try {
  //           playlist.add(audioSource);
  //           await player.insertAudioSource(player.sequence.length, audioSource);
  //           final newQueue = queue.value..add(nextItem);
  //           queue.add(newQueue);
  //           log('✅ Prefetched and added: $nextFile');
  //         } catch (e) {
  //           log('❌ Failed to add: $e');
  //         }

  //         // Remove oldest after prefetching is done
  //         if (player.sequence.length > 2 && !_isRemovingOldest) {
  //           _isRemovingOldest = true;
  //           _canChange = false;

  //           try {
  //             queue.value.removeAt(0);
  //             await player.removeAudioSourceAt(0);
  //             playlist.removeAt(0);
  //             log('🗑️ Removed oldest track from queue');
  //           } catch (e) {
  //             log('⚠️ Remove failed: $e');
  //           } finally {
  //             Future.delayed(const Duration(milliseconds: 1500), () {
  //               _canChange = true;
  //               _isRemovingOldest = false;
  //             });
  //           }
  //         }
  //       },
  //     );
  //     _isFetching = false;
  //   });
  // }

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

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    final audioSource = createAudioSource(mediaItem);
    playlist.add(audioSource);

    final newQueue = queue.value..add(mediaItem);
    queue.add(newQueue);
    try {
      await player.setAudioSources(playlist);
      log('add Successfully');
    } catch (e) {
      log('add UnSuccessfully : $e');
    }
  }

  @override
  Future<void> playMediaItem(MediaItem mediaItem) async {
    final audioSource = mediaItem.extras!['url'] as String;

    try {
      await player.setUrl(audioSource);
      player.play();
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
        controls: [MediaControl.play],
      ),
    );
  }

  @override
  Future<void> play() async {
    player.play();
    playbackState.add(
      playbackState.value.copyWith(
        playing: true,
        controls: [MediaControl.pause],
      ),
    );
  }

  @override
  Future<void> stop() => player.stop();

  // @override
  // Future<void> skipToNext() => player.seekToNext();

  // @override
  // Future<void> skipToPrevious() => player.seekToPrevious();

  // @override
  // Future<void> skipToQueueItem(int index) async {
  //   if (index < 0 || index >= queue.value.length) return;
  //   if (player.shuffleModeEnabled) {
  //     index = player.shuffleIndices[index];
  //   }
  //   player.seek(Duration.zero, index: index);
  // }

  // @override
  // Future<void> removeQueueItemAt(int index) async {
  //   playlist.removeAt(index);

  //   final newQueue = queue.value..removeAt(index);
  //   queue.add(newQueue);
  // }

  @override
  Future<void> customAction(String name, [Map<String, dynamic>? extras]) async {
    if (name == 'dispose') {
      await player.dispose();

      super.stop();
    }
  }
}
