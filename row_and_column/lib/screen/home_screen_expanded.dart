import 'package:flutter/material.dart';

class HomeScreenExpanded extends StatelessWidget {
  const HomeScreenExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
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
