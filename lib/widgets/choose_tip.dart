import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/enums.dart';
import '../utils/helpers/tip_button.dart';
import '../utils/providers.dart';

class ChoosePillWidget extends ConsumerWidget {
  const ChoosePillWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTip = ref.watch(tipProvider);
    final String? customTip =
        ref.watch(customTipButtonContentsProvider.notifier).state;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose tip",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TipButton(text: "10", label: Tip.ten, currentTip: currentTip),
              TipButton(text: "15", label: Tip.fifteen, currentTip: currentTip),
              TipButton(text: "20", label: Tip.twenty, currentTip: currentTip),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TipButton(
                  text: "25", label: Tip.twentyFive, currentTip: currentTip),
              TipButton(
                  text: customTip ?? "Custom tip",
                  isPill: true,
                  label: Tip.custom,
                  currentTip: currentTip),
            ],
          ),
        ],
      ),
    );
  }
}
