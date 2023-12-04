// ignore_for_file: unused_import

import 'package:dice/dice_roller.dart';
import 'package:dice/styled_text.dart';
import 'package:flutter/material.dart';

// creating variable
const endAliangement = Alignment.bottomRight;
const startAliangement = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  const GradientContainer.black({super.key})
      : color1 = Colors.black54,
        color2 = Colors.black87;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAliangement,
          end: endAliangement,
        ),
      ),
      child: const Center(
          child: DiceRoller()
          // StyledText('hello mofos'),
          )
    );
  }
}
