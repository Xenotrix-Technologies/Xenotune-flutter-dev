import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Application/Intro%20bloc/intro_music_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Music_Control/music_control_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Splash/splash_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Subscription/subscription_bloc.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Notification/firebase_msg.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Notification/schedule_notification.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/home.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<SplashBloc>().add(Splash());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<MusicControlBloc>().add(Load());
    });
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<IntroMusicBloc>().add(IntroMusicEvent.pause()),
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<SubscriptionBloc>().add(OnSubscriptionEvent()),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await scheduleMoodReminder();
      await ifUserNotOpendedTheAppFor48Hour();
      await show10PmNotification();
      await FirebaseMsg().initFCM();
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.loaded) {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 1000),
              pageBuilder:
                  (context, animation, secondaryAnimation) => HomePage(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return FadeTransition(opacity: animation, child: child);
              },
            ),
          );
        }
      },
      child: Scaffold(
        body: Stack(
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

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: kMqHeight(context) * 0.59,
                  child: RiveAnimation.asset('assets/animations/earphone.riv'),
                ),
                Text(
                  'Music is the moonlight\nin the gloomy night of life',
                  textAlign: TextAlign.center,
                  style: lexanGiga(color: kwhite),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
