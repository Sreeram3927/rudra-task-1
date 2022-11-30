import 'package:flutter/material.dart';
import 'package:rudra_task_1/screen/buttons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int x = 0;
  int y = 0;

  void up() {
    setState(() {
      y++;
    });
  }

  void down() {
    setState(() {
      y--;
    });
  }

  void left() {
    setState(() {
      x--;
    });
  }

  void right() {
    setState(() {
      x++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text('X-Axis: $x'),
            Text('Y-Axis: $y'),

          ],
        ),

        Buttons(
          up: up,
          down: down,
          left: left,
          right: right,
        )

      ],

    );
  }
}