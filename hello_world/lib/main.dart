import 'package:flutter/material.dart';

// 'android/app/build.gradle'
void main() {
  // 플러터 앱을 실행한다.
  // MaterialApp은 항상 최상위에 위치한다.
  // Scaffold는 바로 아래에 위치한다. (기본 구조를 쉽게 만들 수 있게 해주는 것이 scaffold)
  // Widget: 화면에 무언가를 보여주는 모든 요소
  runApp(
    // MaterialApp: Material 디자인을 사용할 수 있게 해주는 위젯
    const MaterialApp(
      // Scaffold: 화면에 구조를 만들 수 있게 해주는 위젯
      home: Scaffold(
        backgroundColor: Colors.black,
        // Center 가운데 정렬을 해주는 위젯
        body: Center(
          // Text: 글자를 화면에 그려주는 위젯
          child: Text(
            'Hello World',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
