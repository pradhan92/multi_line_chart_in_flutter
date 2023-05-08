import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;

  Indicator({required this.color, required this.text, this.isSquare = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            width: isSquare ? 60.0 : 70.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: color,
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(width: 25.0),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
