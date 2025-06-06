import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:xenotune_flutter_dev/Infrastructure/SnackBar/snackbar.dart';

part 'internet_check_event.dart';
part 'internet_check_state.dart';
part 'internet_check_bloc.freezed.dart';

@injectable
class InternetCheckBloc extends Bloc<InternetCheckEvent, InternetCheckState> {
  final SnackBars snackBars;
  bool isConnectedToInternet = true;
  InternetCheckBloc(this.snackBars) : super(InternetCheckState.initial()) {
    on<Check>((event, emit) {
      snackBars.netWorkCheck(event.context);
    });
    on<IfConnected>((event, emit) async {
      await emit.forEach<InternetStatus>(
        InternetConnection().onStatusChange,
        onData: (status) {
          return InternetCheckState(isTrue: status == InternetStatus.connected);
        },
      );
    });
  }
}
