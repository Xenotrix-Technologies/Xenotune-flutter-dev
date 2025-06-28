import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:material_symbols_icons/symbols.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Music_Control/music_control_bloc.dart';

import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Username%20Update/username_update.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Screens/ultimate_sound.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/Timer/set_timer.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/Timer/show_timer.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    // startHearingReminder(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<InternetCheckBloc>().add(Check(context: context));
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<InternetCheckBloc>().add(IfConnected());
    });

    final eventAdd = context.read<MusicControlBloc>();

    final userController = Get.find<UserController>();

    return SafeArea(
      top: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,

        endDrawer: DrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: kwhite,
          title: Obx(
            () => Text(
              'Hey ${userController.username.value},\nWhat\'s your current mood',
              maxLines: 2,
              style: poppins(color: kwhite, fontSize: 15),
            ),
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
          child: BlocBuilder<InternetCheckBloc, InternetCheckState>(
            builder: (context, iState) {
              return Stack(
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
                  BlocConsumer<MusicControlBloc, MusicControlState>(
                    listener: (context, state) {
                      if (state.isPause ||
                          state.isStoped ||
                          state.isError ||
                          state.isLoading) {
                        eventAdd.add(StopWaveForm());
                      } else {
                        eventAdd.add(StartWaveForm());
                      }
                      if (!iState.isTrue) {
                        eventAdd.add(Pause());
                      }
                    },
                    builder: (context, musicState) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: kMqHeight(context) * 0.65,
                              color: ktransparent,
                              child: RiveAnimation.asset(musicState.animation),
                            ),
                            kSizedBoxHeight15,

                            Container(
                              height: kMqHeight(context) * 0.075,

                              decoration: BoxDecoration(
                                color: ktransparent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: kMqWidth(context) * 0.02,
                                children: [
                                  BlocBuilder<
                                    InternetCheckBloc,
                                    InternetCheckState
                                  >(
                                    builder: (context, iState) {
                                      return IconButton(
                                        onPressed: () {
                                          final isPlay = musicState.isPlay;
                                          context.read<MusicControlBloc>().add(
                                            isPlay ? Pause() : OnTapPlay(),
                                          );
                                        },
                                        icon: Icon(
                                          musicState.isPlay
                                              ? Symbols.pause
                                              : Symbols.play_arrow,
                                          color: kwhite,
                                          size: 45,
                                        ),
                                      );
                                    },
                                  ),

                                  Row(
                                    children:
                                        musicState.heights.map((height) {
                                          return AnimatedContainer(
                                            duration: Duration(
                                              milliseconds: 100,
                                            ),
                                            width: 3,
                                            height: height,
                                            margin: EdgeInsets.symmetric(
                                              horizontal: 2.2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                          );
                                        }).toList(),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      if (iState.isTrue) {
                                        showModalBottomSheet(
                                          context: context,
                                          isDismissible: false,
                                          builder: (context) {
                                            return SetTimerWidget();
                                          },
                                        );
                                      }
                                    },
                                    icon: Icon(
                                      Symbols.timer,
                                      color: kwhite,
                                      size: 45,
                                    ),
                                  ),
                                ],
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
                                        eventAdd.add(Pause());
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
                                              final offsetAnimation = animation
                                                  .drive(tween);

                                              return SlideTransition(
                                                position: offsetAnimation,
                                                child: child,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      icon: Icon(
                                        Symbols.tune,
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
                                      onPressed: () {
                                        eventAdd.add(
                                          MusicControlEvent.play(mood: 'focus'),
                                        );
                                      },
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
                                      onPressed: () {
                                        eventAdd.add(
                                          MusicControlEvent.play(mood: 'relax'),
                                        );
                                      },
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
                                      onPressed: () {
                                        eventAdd.add(
                                          MusicControlEvent.play(mood: 'sleep'),
                                        );
                                      },
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
                            TimerWidget(),
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
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
