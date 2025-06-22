part of 'sounds_control_bloc.dart';

@freezed
abstract class SoundsControlState with _$SoundsControlState {
  const factory SoundsControlState({
    required Map<String, double> volumes,
    required Map<String, bool> playingStatus,
  }) = _SoundsControlState;
  factory SoundsControlState.initial() {
    return SoundsControlState(volumes: {}, playingStatus: {});
  }
}
//  volumes: {
//         'heavy_rain': 0,
//         'light_rain': 0,
//         'wind': 0,
//         'thunder': 0,
//         'fireplace': 0,
//         'wave': 0,
//         'stream': 0,
//         'forest': 0,
//         'leaf': 0,
//         'birds': 0,
//         'cicada': 0,
//         'frog': 0,
//         'bees': 0,
//         'owl': 0,
//       },