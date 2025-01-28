import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeFactoryWidget(),
    );
  }
}

class CodeFactoryWidget extends StatelessWidget {
  CodeFactoryWidget({super.key}) {
    print('-- Constructor --');
  }

  @override
  Widget build(BuildContext context) {
    print('-- Build --');

    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}
