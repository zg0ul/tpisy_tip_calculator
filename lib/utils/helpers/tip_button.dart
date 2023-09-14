import 'package:flutter/material.dart';
import 'package:tipsy_tip_calculator/utils/colors.dart';

class TipButton extends StatelessWidget {
  final String text;
  final bool isPill;
  const TipButton({required this.text, this.isPill = false, super.key});

  @override
  Widget build(BuildContext context) {
    const int width = 70;
    final double buttonWidth = width * (isPill ? 2.2 : 1);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: buttonWidth,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(55),
          boxShadow: const [
            BoxShadow(
              color: shadowColor,
              blurRadius: 3,
              offset: Offset(1, 2),
              blurStyle: BlurStyle.normal,
              spreadRadius: 0.1,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Karmilla",
              color: textColor,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
