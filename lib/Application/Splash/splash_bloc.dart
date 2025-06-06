import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<Splash>((event, emit) async {
      emit(SplashState(loading: true, loaded: false));
      await Future.delayed(Duration(seconds: 4));
      emit(SplashState(loading: false, loaded: true));
    });
  }
}
