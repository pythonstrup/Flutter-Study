import 'package:flutter/material.dart';

class HomeScreenPadding extends StatelessWidget {
  const HomeScreenPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          32.0,
          64.0,
          16.0,
          8.0,
        ),
        child: Container(
          color: Colors.blue,
          width: 50.0,
          height: 50.0,
        ),
      ),
    )));
  }
}
