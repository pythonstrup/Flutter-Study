import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (color == Colors.blue) {
                  color = Colors.red;
                } else {
                  color = Colors.blue;
                }
                print('색상 변경: color: $color');
              },
              child: Text(
                '색상 변경!',
              ),
            ),
            SizedBox(height: 32.0),
            Container(
              width: 50.0,
              height: 50.0,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
