import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class SetTimerWidget extends StatelessWidget {
  const SetTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            gradient: LinearGradient(
              colors: [kPrimaryBlueDark, kPrimaryPurpleDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          height: kMqHeight(context) * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<TimerBloc>().add(Hour(hour: 0));
                      context.read<TimerBloc>().add(Minute(minute: 0));
                    },
                    icon: Icon(Symbols.close, color: kwhite),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: kMqHeight(context) * 0.015),
                child: GradientText(
                  'Set Timer',
                  colors: [kPrimaryPurple, kPrimaryBlue],
                  style: lexanGiga(fontSize: 20),
                ),
              ),
              kSizedBoxHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberPicker(
                    itemCount: 3,
                    selectedTextStyle: inter(
                      color: kPrimaryPurple,
                      fontSize: 25,
                    ),
                    zeroPad: true,
                    textStyle: inter(color: kwhite),
                    minValue: 0,
                    maxValue: 12,
                    value: state.hour,
                    onChanged: (value) {
                      context.read<TimerBloc>().add(Hour(hour: value));
                    },
                  ),
                  Text(':', style: poppins(color: kwhite)),
                  NumberPicker(
                    itemCount: 3,
                    selectedTextStyle: inter(
                      color: kPrimaryPurple,
                      fontSize: 25,
                    ),
                    zeroPad: true,
                    textStyle: inter(color: kwhite),
                    minValue: 0,
                    maxValue: 59,
                    value: state.minute,
                    onChanged: (value) {
                      context.read<TimerBloc>().add(Minute(minute: value));
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kMqWidth(context) * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    state.settedHour > 0 || state.settedMinute > 0
                        ? ElevatedButton(
                          onPressed: () {
                            context.read<TimerBloc>().add(Cancel());

                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Remove current',
                            style: inter(color: kblack),
                          ),
                        )
                        : SizedBox.shrink(),

                    TextButton(
                      onPressed: () {
                        context.read<TimerBloc>().add(
                          Set(
                            hour: state.settedHour,
                            minute: state.settedMinute,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text('Set', style: inter(color: kwhite)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
