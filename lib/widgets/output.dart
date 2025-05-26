import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/enums.dart';
import '../utils/providers.dart';
import '../utils/styles/colors.dart';

class OutputWidget extends ConsumerWidget {
  const OutputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalBill = ref.watch(totalBillProvider);

    final customTipPercentage = ref.watch(customTipPercentageProvider) / 100;
    final customTipButtonIsActive = ref.watch(customTipButtonIsActiveProvider);
    final tipPercentage = ref.watch(tipProvider).percentage;
    final finalTipPercentage =
        customTipButtonIsActive ? customTipPercentage : tipPercentage;

    final splitCount = ref.watch(splitCounterProvider);

    final tipPerPerson = (totalBill * finalTipPercentage) / splitCount;
    final billPerPerson = totalBill / splitCount;
    final totalAmountPerPerson =
        (totalBill + totalBill * finalTipPercentage) / splitCount;

    return Container(
      height: 320,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Total per person',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 24,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '\$ ${totalAmountPerPerson.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: textColor,
                    fontFamily: 'Karmilla',
                    fontWeight: FontWeight.w700,
                    fontSize: 52,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'bill',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$ ${billPerPerson.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
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
                        fontSize: 20,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$ ${tipPerPerson.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
