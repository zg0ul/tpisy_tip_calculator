import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tipsy_tip_calculator/utils/controllers.dart';
import 'package:tipsy_tip_calculator/utils/enums.dart';
import 'package:tipsy_tip_calculator/utils/providers.dart';
import 'package:tipsy_tip_calculator/utils/styles/styles.dart';

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
                    ref.read(customTipButtonContents.notifier).state = value;
                    final numvalue = double.tryParse(value);
                    print(numvalue);
                    ref
                        .read(tipProvider.notifier)
                        .state
                        .customPercentage = numvalue ?? 0.0;
                  },
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
