import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            color: Colors.black,
            // 넓이를 끝까지 늘려줌
            width: double.infinity,
            child: Column(
              // mainAxisAlignment의 기본값은 start
              mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisSize는 기본값이 max다.
              mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment의 기본값은 center
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
          // Container(
          //   color: Colors.black,
          //   // 높이를 끝까지 늘려줌
          //   height: double.infinity,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: colors
          //         .map(
          //           (color) => Container(
          //             height: 50.0,
          //             width: 50.0,
          //             color: color,
          //           ),
          //         )
          //         .toList(),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
