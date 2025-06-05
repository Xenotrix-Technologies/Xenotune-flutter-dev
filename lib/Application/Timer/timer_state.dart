part of 'timer_bloc.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState({
    required int hour,
    required int minute,
    required int settedHour,
    required int settedMinute,
  }) = _TimerState;
  factory TimerState.initial() {
    return TimerState(hour: 0, minute: 0, settedHour: 0, settedMinute: 0);
  }
}
