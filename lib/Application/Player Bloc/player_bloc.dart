import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

@injectable
class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  Timer? timerControl;

  PlayerBloc() : super(PlayerState.initial()) {
    on<Play>((event, emit) async {
      emit(state.copyWith(isPause: false));
    });
    on<Pause>((event, emit) async {
      emit(
        state.copyWith(isPause: true, heights: List.generate(25, (_) => 7.0)),
      );
    });

    on<StartWaveForm>((event, emit) {
      timerControl?.cancel();
      timerControl = Timer.periodic(Duration(milliseconds: 100), (_) {
        add(WaveForm());
      });
    });
    on<StopWaveForm>((event, emit) {
      timerControl!.cancel();
      timerControl = null;
    });
    on<WaveForm>((event, emit) {
      emit(
        state.copyWith(
          heights: List.generate(25, (_) => Random().nextDouble() * 60 + 10),
        ),
      );
    });
  }
  @override
  Future<void> close() {
    timerControl?.cancel();
    return super.close();
  }
}
