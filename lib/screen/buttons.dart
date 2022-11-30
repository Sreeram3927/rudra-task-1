import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  final void Function() up;
  final void Function() down;
  final void Function() left;
  final void Function() right;

  const Buttons({
    super.key,
    required this.up,
    required this.down,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [

        FloatingActionButton(
          onPressed: up,
          child: const Icon(Icons.arrow_upward)
        ),

        FloatingActionButton(
          onPressed: down,
          child: const Icon(Icons.arrow_downward),
        ),

        FloatingActionButton(
          onPressed: left,
          child: const Icon(Icons.arrow_back),
        ),

        FloatingActionButton(
          onPressed: right,
          child: const Icon(Icons.arrow_forward_sharp),
        ),

      ],
    );
  }
}