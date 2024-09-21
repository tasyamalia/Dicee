import 'dart:math';

import 'package:flutter/material.dart';

class DicePageView extends StatefulWidget {
  const DicePageView({super.key});

  @override
  State<DicePageView> createState() => _DicePageViewState();
}

class _DicePageViewState extends State<DicePageView> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: Image.asset("assets/images/dice$leftDiceNumber.png"),
            onPressed: () {
              changeDiceFace();
            },
          )),
          Expanded(
              child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: Image.asset("assets/images/dice$rightDiceNumber.png"),
            onPressed: () {
              changeDiceFace();
            },
          ))
        ],
      ),
    );
  }
}
