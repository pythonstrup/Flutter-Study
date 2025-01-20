import 'package:flutter/material.dart';

// 'android/app/build.gradle'
void main() {
  // 플러터 앱을 실행한다.
  runApp(
    // MaterialApp은 항상 최상위에 위치한다.
    // Scaffold는 바로 아래에 위치한다. (기본 구조를 쉽게 만들 수 있게 해주는 것이 scaffold)
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World'
          )
        ),
      ),
    )
  );
}
