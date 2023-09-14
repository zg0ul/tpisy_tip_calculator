import 'package:flutter/material.dart';
import 'package:tipsy_tip_calculator/utils/colors.dart';

class OutputWidget extends StatelessWidget {
  const OutputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Total per person',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 22,
                    letterSpacing: 0.5,
                  ),
                ),
                const Text(
                  '\$ 45.05',
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Karmilla',
                    fontWeight: FontWeight.w700,
                    fontSize: 46,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'bill',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const Text(
                      '\$ 37.54',
                      style: TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'tip',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const Text(
                      '\$ 7.51',
                      style: TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
