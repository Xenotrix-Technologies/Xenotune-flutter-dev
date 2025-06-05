part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.hour({required int hour}) = Hour;
  const factory TimerEvent.minute({required int minute}) = Minute;
  const factory TimerEvent.set({required int hour, required int minute}) = Set;
  const factory TimerEvent.cancel() = Cancel;
}
