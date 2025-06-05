import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Application/Splash/splash_bloc.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/home.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return context.read<SplashBloc>().add(Splash());
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.loaded) {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
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
            Center(
              child: Opacity(
                opacity: 0.5,
                child: RiveAnimation.asset(
                  'assets/animations/honey_comb.riv',

                  speedMultiplier: 0.8,
                ),
              ),
            ),
            Center(
              child: Text(
                'Music is the moonlight\nin the gloomy night of life',
                textAlign: TextAlign.center,
                style: lexanGiga(color: kwhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
