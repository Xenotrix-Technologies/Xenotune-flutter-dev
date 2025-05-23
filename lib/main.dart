import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Dependency_injection.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjectable();
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
