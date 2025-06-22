import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Application/Ultimate_Sound/sounds_control_bloc.dart';

import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class SoundsViewWidget extends StatefulWidget {
  final IconData soundIcon;
  final String path;
  final String soundId;

  const SoundsViewWidget({
    super.key,
    required this.soundIcon,
    required this.path,
    required this.soundId,
  });

  @override
  State<SoundsViewWidget> createState() => _SoundsViewWidgetState();
}

class _SoundsViewWidgetState extends State<SoundsViewWidget> {
  // double _value = 0;
  double _trackHeight = 15;
  // final _audioPlayer = AudioPlayer();
  @override
  void initState() {
    // if (_audioPlayer.playerState.processingState == ProcessingState.idle) {
    //   _audioPlayer.setAsset(widget.path);
    //   _audioPlayer.setLoopMode(LoopMode.one);
    // }

    // _audioPlayer.setVolume(_value);

    // _audioPlayer.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SoundsControlBloc>().add(
        OnPlayed(path: widget.path, sID: widget.soundId),
      );
    });
    return BlocBuilder<SoundsControlBloc, SoundsControlState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: kMqWidth(context) * 0.05),
              child: Icon(widget.soundIcon, color: kwhite, size: 40),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<SoundsControlBloc>().add(
                      OnTapMute(soundId: widget.soundId),
                    );
                  },
                  icon: Icon(
                    (state.volumes[widget.soundId] ?? 0) == 0
                        ? Symbols.volume_off
                        : ((state.volumes[widget.soundId] ?? 0) >= 0.5
                            ? Symbols.volume_up
                            : Symbols.volume_down),
                    color: kwhite,
                  ),
                ),

                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 100),
                  tween: Tween<double>(begin: 20, end: _trackHeight),
                  builder: (context, value, child) {
                    return SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kwhite,
                        thumbColor: kwhite,

                        inactiveTrackColor: kGrey,
                        trackHeight: value,
                        thumbShape: SliderComponentShape.noThumb,
                      ),
                      child: SizedBox(
                        width: kMqWidth(context) * 0.65,
                        child: Slider(
                          min: 0,
                          max: 1,
                          value: state.volumes[widget.soundId] ?? 0,

                          onChangeStart: (value) {
                            setState(() {
                              _trackHeight = 25;
                            });
                          },
                          onChangeEnd: (value) {
                            setState(() {
                              _trackHeight = 15;
                            });
                          },
                          onChanged: (value) {
                            context.read<SoundsControlBloc>().add(
                              OnVolumeChange(
                                volume: value,
                                soundId: widget.soundId,
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
