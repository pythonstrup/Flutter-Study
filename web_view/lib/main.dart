import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

void main() {
  // Flutter 프레임워크가 실행될 준비가 될 때가지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
