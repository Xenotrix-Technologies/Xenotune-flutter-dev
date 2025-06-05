import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

@injectable
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(TimerState.initial()) {
    on<Hour>((event, emit) {
      emit(state.copyWith(hour: event.hour));
    });
    on<Minute>((event, emit) {
      emit(state.copyWith(minute: event.minute));
    });
    on<Set>((event, emit) {
      emit(state.copyWith(settedHour: state.hour, settedMinute: state.minute));
    });
    on<Cancel>((event, emit) {
      emit(state.copyWith(settedHour: 0, settedMinute: 0, hour: 0, minute: 0));
    });
  }
}
