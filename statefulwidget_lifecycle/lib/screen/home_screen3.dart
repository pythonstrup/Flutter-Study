import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = color == Colors.blue ? Colors.red : Colors.blue;
                  });
                },
                child: CodeFactoryWidget(
                  color: color,
                ),
              ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클릭해서 보이기/안보이기'),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeFactoryWidget extends StatefulWidget {
  final Color color;

  CodeFactoryWidget({
    super.key,
    required this.color,
  }) {
    print('1) StatefuleWidget Construtor');
  }

  @override
  State<CodeFactoryWidget> createState() {
    print('2) StatefuleWidget Create State');
    return _CodeFactoryWidgetState();
  }
}

class _CodeFactoryWidgetState extends State<CodeFactoryWidget> {
  @override
  void initState() {
    print('3) StatefulWidget initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) StatefulWidget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CodeFactoryWidget oldWidget) {
    print('StatefulWidget didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('5) StatefulWidget build');

    return Container(
      color: widget.color,
      width: 50.0,
      height: 50.0,
    );
  }

  @override
  void deactivate() {
    print('6) StatefulWidget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) StatefulWidget dispose');
    super.dispose();
  }
}
