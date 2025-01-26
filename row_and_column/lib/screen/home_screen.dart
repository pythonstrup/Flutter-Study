import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: colors
                .map(
                  (color) => Container(
                    height: 50.0,
                    width: 50.0,
                    color: color,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
