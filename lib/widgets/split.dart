import 'package:flutter/material.dart';
import 'package:tipsy_tip_calculator/utils/colors.dart';

class SplitWidget extends StatelessWidget {
  const SplitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Split",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontFamily: "Karmilla",
                    // fontWeight: FontWeight.w700,
                    color: textColor,
                    fontSize: 25,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                '3',
                style: TextStyle(
                  fontFamily: "Karmilla",
                  fontWeight: FontWeight.w700,
                  color: textColor,
                  fontSize: 25,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontFamily: "Karmilla",
                    // fontWeight: FontWeight.w700,
                    color: textColor,
                    fontSize: 20,
                    letterSpacing: 0.5,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
