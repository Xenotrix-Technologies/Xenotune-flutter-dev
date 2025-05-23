import 'dart:async';
import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Screens/ultimate_sound.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  List<double> _heights = List.generate(25, (_) => 7.0);

  Timer? _timer;
  final List<String> sounds = [
    'Rain',
    'Wave',
    'Wind',
    'Nature',
    'Birds',
    'Violin',
    'Guiter',
    'Piano',
    'Flute',
    'White noise',
    'Forest',
    'Ocean breeze',
    'Thunderstorm',
    'Night crickets',
    'Cicadas',
  ];

  @override
  void initState() {
    super.initState();
    _audioPlayer.playerStateStream.listen((state) {
      final isPlaying = state.playing;
      final hasEnded = state.processingState == ProcessingState.completed;

      if (mounted) {
        setState(() {
          _isPlaying = isPlaying;

          if (!isPlaying || hasEnded) {
            _stopWaveAnimation();
          } else {
            _startWaveAnimation();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _togglePlayPause() async {
    if (_audioPlayer.playing) {
      await _audioPlayer.pause();
    } else {
      if (_audioPlayer.playerState.processingState == ProcessingState.idle) {
        await _audioPlayer.setUrl(
          'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
        );
      }

      await _audioPlayer.play();
    }
  }

  void _startWaveAnimation() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: 100), (_) {
      setState(() {
        _heights = List.generate(25, (_) => Random().nextDouble() * 60 + 10);
      });
    });
  }

  void _stopWaveAnimation() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      _timer = null;
      setState(() {
        _heights = List.generate(25, (_) => 7.0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        endDrawer: DrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: kwhite,
          title: Text(
            'Hey user,\nWhats\'s your current mood',
            maxLines: 2,
            style: poppins(color: kwhite, fontSize: 15),
          ),
          backgroundColor: ktransparent,
          surfaceTintColor: ktransparent,
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: kPrimaryBlueDark,

                  content: Text(
                    'Are you sure you want to exit?',
                    style: poppins(color: kwhite),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: kMqHeight(context) * 0.06,
                    horizontal: kMqWidth(context) * 0.05,
                  ),

                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('No', style: inter(color: kBlueTextColour)),
                    ),
                    TextButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: Text('Yes', style: inter(color: kPrimaryPurple)),
                    ),
                  ],
                );
              },
            );
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [kPrimaryPurpleDark, kblack, kPrimaryBlueDark],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: kMqHeight(context) * 0.65,
                      color: ktransparent,
                      child: Center(
                        child: Text(
                          'Animation',
                          style: poppins(color: kwhite, fontSize: 35),
                        ),
                      ),
                    ),
                    kSizedBoxHeight15,

                    Center(
                      child: Container(
                        height: kMqHeight(context) * 0.075,
                        width: kMqWidth(context) * 0.8,
                        decoration: BoxDecoration(
                          color: ktransparent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: kMqWidth(context) * 0.02,
                          children: [
                            IconButton(
                              onPressed: _togglePlayPause,
                              icon: Icon(
                                _isPlaying ? Symbols.pause : Symbols.play_arrow,
                                color: kwhite,
                                size: 45,
                              ),
                            ),
                            Row(
                              children:
                                  _heights.map((height) {
                                    return AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      width: 3,
                                      height: height,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 2.2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    );
                                  }).toList(),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Symbols.timer,
                                color: kwhite,
                                size: 45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    kSizedBoxHeight15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: kMqHeight(context) * 0.1,
                          width: kMqWidth(context) * 0.19,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                kPrimaryPurple.withAlpha(120),
                                kPrimaryBlue.withAlpha(120),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(
                                      milliseconds: 500,
                                    ),
                                    pageBuilder:
                                        (
                                          context,
                                          animation,
                                          secondaryAnimation,
                                        ) => SoundsPage(),
                                    transitionsBuilder: (
                                      context,
                                      animation,
                                      secondaryAnimation,
                                      child,
                                    ) {
                                      const begin = Offset(1.0, 0.0);
                                      const end = Offset.zero;
                                      final tween = Tween(
                                        begin: begin,
                                        end: end,
                                      );
                                      final offsetAnimation = animation.drive(
                                        tween,
                                      );

                                      return SlideTransition(
                                        position: offsetAnimation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              icon: Icon(Symbols.tune, color: kwhite, size: 30),
                            ),
                          ),
                        ),
                        Container(
                          height: kMqHeight(context) * 0.1,
                          width: kMqWidth(context) * 0.19,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                kPrimaryPurple.withAlpha(120),
                                kPrimaryBlue.withAlpha(120),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Symbols.stream,
                                color: kwhite,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: kMqHeight(context) * 0.1,
                          width: kMqWidth(context) * 0.19,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                kPrimaryPurple.withAlpha(120),
                                kPrimaryBlue.withAlpha(120),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Symbols.sentiment_calm,
                                color: kwhite,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: kMqHeight(context) * 0.1,
                          width: kMqWidth(context) * 0.19,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                kPrimaryPurple.withAlpha(120),
                                kPrimaryBlue.withAlpha(120),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Symbols.sleep,
                                color: kwhite,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    kSizedBoxHeight15,
                    SlideCountdownSeparated(
                      separator: ':',
                      separatorPadding: EdgeInsets.symmetric(horizontal: 5),
                      separatorStyle: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                      ),
                      duration: Duration(minutes: 1),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [kPrimaryPurple, kPrimaryBlue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      showZeroValue: true,
                    ),
                    kSizedBoxHeight15,
                    Divider(
                      color: kwhite,
                      indent: kMqWidth(context) * 0.07,
                      endIndent: kMqWidth(context) * 0.07,
                    ),
                    kSizedBoxHeight15,
                    Center(
                      child: Wrap(
                        children: List.generate(sounds.length, (index) {
                          return Container(
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: kBgBlue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              sounds[index],
                              style: inter(color: kwhite),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
