import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HomeScreen()),
  );
}

// 단축키 stless
// 위젯이 빌드 함수 안에 있지 않을 경우, 핫 리로드가 가능해진다! (재실행하지 않아도 된다!)
// 그렇기 때문에 StatelessWidget를 잘 사용해야 한다!
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 원하는 색상 코드 #335CB0
      backgroundColor: Color(0xFF335CB0),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/logo.png'),
            SizedBox(height: 28.0),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
