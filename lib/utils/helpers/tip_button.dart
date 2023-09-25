import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers.dart';
import '../enums.dart';
import '../providers.dart';
import '../styles/styles.dart';

class TipButton extends ConsumerWidget {
  final String text;
  final bool isPill;
  final Tip label;
  final Tip currentTip;
  const TipButton({
    required this.text,
    required this.label,
    required this.currentTip,
    this.isPill = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const int width = 70;
    final double buttonWidth = width * (isPill ? 2.2 : 1);
    final bool isActive = label == currentTip;

    return GestureDetector(
      onTap: () {
        ref.read(tipProvider.notifier).state = label;
        if (!isActive && label != Tip.custom) {
          ref.read(customTipButtonIsActiveProvider.notifier).state = false;
        }
      },
      child: Container(
        width: buttonWidth,
        height: 50,
        decoration: isActive ? activeBoxStyle : inactiveBoxStyle,
        child: Center(
          child: isActive && label == Tip.custom
              ? TextField(
                  keyboardType: TextInputType.number,
                  decoration: customTipActiveDecoration,
                  style: activeTextStyle,
                  controller: customTipButtonController,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.top,
                  onChanged: (value) {
                    ref.read(customTipButtonContentsProvider.notifier).state =
                        value;
                    final numValue = double.tryParse(value);
                    ref.read(tipProvider.notifier).state.customPercentage =
                        numValue ?? 0.0;
                    ref.read(customTipPercentageProvider.notifier).state =
                        numValue ?? 0.0;
                    ref.read(customTipButtonIsActiveProvider.notifier).state =
                        true;
                  },
                  onTap: () => ref
                      .read(customTipButtonIsActiveProvider.notifier)
                      .state = true,
                )
              : Text(
                  '$text%',
                  style: isActive ? activeTextStyle : inactiveTextStyle,
                ),
        ),
      ),
    );
  }
}
