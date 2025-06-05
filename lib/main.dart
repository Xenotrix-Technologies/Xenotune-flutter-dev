import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Player%20Bloc/player_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Splash/splash_bloc.dart';
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Username%20Update/username_update.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/Screens/begin_page.dart';
import 'package:xenotune_flutter_dev/Presentation/Getting%20Started/welcome.dart';
import 'package:xenotune_flutter_dev/Presentation/Loading/loading.dart';
import 'package:xenotune_flutter_dev/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjectable();
  await GetStorage.init();
  Get.put(UserController());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    bool isFirstTime = box.read('first_time') ?? true;
    bool isOnboardingFirstTime = box.read('onboarding_first_time') ?? true;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getit<PlayerBloc>()),
        BlocProvider(create: (context) => getit<InternetCheckBloc>()),
        BlocProvider(create: (context) => getit<TimerBloc>()),
        BlocProvider(create: (context) => SplashBloc()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            isFirstTime
                ? BeginPage()
                : (isOnboardingFirstTime ? WelcomePage() : LoadingScreen()),
      ),
    );
  }
}
