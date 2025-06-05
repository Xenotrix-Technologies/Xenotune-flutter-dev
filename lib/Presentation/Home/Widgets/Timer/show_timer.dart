import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:xenotune_flutter_dev/Application/Player%20Bloc/player_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return SlideCountdownSeparated(
          key: ValueKey('${state.settedHour}_${state.settedMinute}'),
          separator: ':',
          separatorPadding: EdgeInsets.symmetric(horizontal: 5),
          separatorStyle: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
          shouldShowDays: (p0) {
            return false;
          },
          onDone: () {
            context.read<PlayerBloc>().add(Stop());
          },

          duration: Duration(minutes: state.minute, hours: state.settedHour),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kPrimaryPurple, kPrimaryBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          showZeroValue: true,
        );
      },
    );
  }
}
