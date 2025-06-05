import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:just_audio/just_audio.dart' hide PlayerState;
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Player%20Bloc/player_bloc.dart';
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

  final AudioPlayer _audioPlayer = AudioPlayer();

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<InternetCheckBloc>().add(Check(context: context));
    });
    final eventAdd = context.read<PlayerBloc>();
    final userController = Get.find<UserController>();
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        endDrawer: DrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: kwhite,
          title: Obx(
            () => Text(
              'Hey ${userController.username.value},\nWhats\'s your current mood',
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
                        child: BlocConsumer<PlayerBloc, PlayerState>(
                          listener: (context, state) async {
                            if (state.isPause) {
                              eventAdd.add(StopWaveForm());
                              await _audioPlayer.pause();
                            } else {
                              if (_audioPlayer.playerState.processingState ==
                                  ProcessingState.idle) {
                                await _audioPlayer.setUrl(
                                  'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
                                );
                              }
                              eventAdd.add(StartWaveForm());
                              if (!state.isStoped) {
                                await _audioPlayer.play();
                              } else {
                                await _audioPlayer.stop();
                              }
                            }
                          },
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: kMqWidth(context) * 0.02,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    final isPause =
                                        context
                                            .read<PlayerBloc>()
                                            .state
                                            .isPause;
                                    context.read<PlayerBloc>().add(
                                      isPause ? Play() : Pause(),
                                    );
                                  },
                                  icon: Icon(
                                    state.isPause
                                        ? Symbols.play_arrow
                                        : Symbols.pause,
                                    color: kwhite,
                                    size: 45,
                                  ),
                                ),
                                Row(
                                  children:
                                      state.heights.map((height) {
                                        return AnimatedContainer(
                                          duration: Duration(milliseconds: 100),
                                          width: 3,
                                          height: height,
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 2.2,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              2,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                ),
                                IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isDismissible: false,
                                      builder: (context) {
                                        return SetTimerWidget();
                                      },
                                    );
                                  },
                                  icon: Icon(
                                    Symbols.timer,
                                    color: kwhite,
                                    size: 45,
                                  ),
                                ),
                              ],
                            );
                          },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
