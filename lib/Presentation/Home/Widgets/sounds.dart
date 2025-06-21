import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class SoundsViewWidget extends StatefulWidget {
  final IconData soundIcon;
  final String path;

  const SoundsViewWidget({
    super.key,
    required this.soundIcon,
    required this.path,
  });

  @override
  State<SoundsViewWidget> createState() => _SoundsViewWidgetState();
}

class _SoundsViewWidgetState extends State<SoundsViewWidget> {
  double _value = 0;
  double _trackHeight = 15;
  final _audioPlayer = AudioPlayer();
  @override
  void initState() {
    if (_audioPlayer.playerState.processingState == ProcessingState.idle) {
      _audioPlayer.setAsset(widget.path);
      _audioPlayer.setLoopMode(LoopMode.one);
    }

    _audioPlayer.setVolume(_value);

    _audioPlayer.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                setState(() {
                  _value = 0;
                });
                _audioPlayer.setVolume(_value);
              },
              icon: Icon(
                _value == 0
                    ? Symbols.volume_off
                    : (_value >= 0.5 ? Symbols.volume_up : Symbols.volume_down),
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
                      value: _value,

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
                        setState(() {
                          _value = value;
                        });
                        _audioPlayer.setVolume(_value);
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
  }
}
