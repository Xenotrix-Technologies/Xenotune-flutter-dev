import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Intro%20bloc/intro_music_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Music_Control/music_control_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Splash/splash_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Ultimate_Sound/sounds_control_bloc.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Notification/firebase_msg.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Notification/initilize_notification.dart';

import 'package:xenotune_flutter_dev/Infrastructure/Username%20Update/username_update.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/Screens/begin_page.dart';
import 'package:xenotune_flutter_dev/Presentation/Getting%20Started/welcome.dart';
import 'package:xenotune_flutter_dev/Presentation/Loading/loading.dart';
import 'package:xenotune_flutter_dev/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await configInjectable();
  Get.put(UserController());

  await configureTimeZone();
  await initNotifications();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMsg().initFCM();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    bool isFirstTime = box.read('first_time') ?? true;
    bool isOnboardingFirstTime = box.read('onboarding_first_time') ?? true;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getit<MusicControlBloc>()),
        BlocProvider(create: (context) => getit<SoundsControlBloc>()),
        BlocProvider(create: (context) => getit<IntroMusicBloc>()),
        BlocProvider(create: (context) => getit<InternetCheckBloc>()),
        BlocProvider(create: (context) => getit<TimerBloc>()),
        BlocProvider(create: (context) => SplashBloc()),
      ],
      child: GetMaterialApp(
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: kwhite,
            selectionHandleColor: kPrimaryPurple,
            selectionColor: kPrimaryPurpleDark,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home:
            isFirstTime
                ? BeginPage()
                : (isOnboardingFirstTime ? WelcomePage() : LoadingScreen()),
      ),
    );
  }
}
