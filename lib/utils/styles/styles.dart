import 'package:flutter/material.dart';
import 'colors.dart';

const TextStyle inactiveTextStyle = TextStyle(
  fontFamily: "Karmilla",
  color: textColor,
  fontSize: 16,
  letterSpacing: 0.5,
);

const TextStyle activeTextStyle = TextStyle(
  fontFamily: "Karmilla",
  color: Colors.white,
  fontSize: 16,
  letterSpacing: 0.5,
);

BoxDecoration inactiveBoxStyle = BoxDecoration(
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
);

BoxDecoration activeBoxStyle = BoxDecoration(
  color: activeButtonColor,
  borderRadius: BorderRadius.circular(55),
);

const InputDecoration customTipActiveDecoration = InputDecoration(
  border: OutlineInputBorder(
    gapPadding: 100,
    borderSide: BorderSide(color: titleColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(55)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: titleColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(55)),
  ),
  fillColor: activeButtonColor,
  suffixText: '%',
  suffixStyle: activeTextStyle,

  // hintText: 'Custom tip',
  // hintStyle: activeTextStyle,
);
