import 'package:audio_service/audio_service.dart';

final moodSongs = [
  MediaItem(
    id: 'focus',
    title: 'Focus',
    album: 'Xenotune',
    extras: {
      'url': 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      'animation': 'assets/animations/network_connection.riv',
    },
  ),
  MediaItem(
    id: 'relax',
    title: 'Relax',
    album: 'Xenotune',
    extras: {
      'url': 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
      'animation': 'assets/animations/relax.riv',
    },
  ),
  MediaItem(
    id: 'sleep',
    title: 'Sleep',
    album: 'Xenotune',
    extras: {
      'url': 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
      'animation': 'assets/animations/sleep.riv',
    },
  ),
];
