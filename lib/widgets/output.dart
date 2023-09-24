import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tipsy_tip_calculator/utils/enums.dart';
import 'package:tipsy_tip_calculator/utils/providers.dart';
import 'package:tipsy_tip_calculator/utils/styles/colors.dart';

class OutputWidget extends ConsumerWidget {
  const OutputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalBill = ref.watch(totalBillProvider);
    final tipPercentage = ref.watch(tipProvider).percentage;
    final splitCount = ref.watch(splitCounterProvider);

    final tipPerPerson = (totalBill * tipPercentage) / splitCount;
    final billPerPerson = totalBill / splitCount;
    final totalAmountPerPerson =
        (totalBill + totalBill * tipPercentage) / splitCount;

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
                Text(
                  '\$ ${totalAmountPerPerson.toStringAsFixed(2)}',
                  style: const TextStyle(
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
                    Text(
                      '\$ ${billPerPerson.toStringAsFixed(2)}',
                      style: const TextStyle(
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
                    Text(
                      '\$ ${tipPerPerson.toStringAsFixed(2)}',
                      style: const TextStyle(
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
