import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Infrastructure/SnackBar/snackbar.dart';

part 'internet_check_event.dart';
part 'internet_check_state.dart';
part 'internet_check_bloc.freezed.dart';

@injectable
class InternetCheckBloc extends Bloc<InternetCheckEvent, InternetCheckState> {
  final SnackBars snackBars;
  InternetCheckBloc(this.snackBars) : super(InternetCheckState.initial()) {
    on<Check>((event, emit) {
      snackBars.netWorkCheck(event.context);
    });
  }
}
