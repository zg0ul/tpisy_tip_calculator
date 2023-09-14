import 'package:flutter/material.dart';
import 'package:tipsy_tip_calculator/utils/helpers/tip_button.dart';

class ChoosePillWidget extends StatelessWidget {
  const ChoosePillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      // height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose tip",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TipButton(text: "10%"),
              TipButton(text: "15%"),
              TipButton(text: "20%"),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TipButton(text: "25%"),
              TipButton(text: "Custom tip", isPill: true),
            ],
          ),
        ],
      ),
    );
  }
}
