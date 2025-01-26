import 'package:flutter/material.dart';

class HomeScreenFlexible extends StatelessWidget {
  const HomeScreenFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
