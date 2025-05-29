import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/Screens/begin_page.dart';
import 'package:xenotune_flutter_dev/Presentation/Getting%20Started/welcome.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjectable();
  await GetStorage.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    bool isFirstTime = box.read('first_time') ?? true;
    bool isOnboardingFirstTime = box.read('onboarding_first_time') ?? true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          isFirstTime
              ? BeginPage()
              : (isOnboardingFirstTime ? WelcomePage() : HomePage()),
    );
  }
}
