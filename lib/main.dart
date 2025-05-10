import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Screens/ultimate_sound.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SoundsPage());
  }
}
