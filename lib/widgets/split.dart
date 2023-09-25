import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/styles/colors.dart';
import '../utils/providers.dart';

class SplitWidget extends ConsumerWidget {
  const SplitWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splitCount = ref.watch(splitCounterProvider);
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
                onPressed: () {
                  if (splitCount >= 3) {
                    ref.read(splitCounterProvider.notifier).state =
                        splitCount - 1;
                  }
                },
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
              Text(
                splitCount.toString(),
                style: const TextStyle(
                  fontFamily: "Karmilla",
                  fontWeight: FontWeight.w700,
                  color: textColor,
                  fontSize: 25,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  if (splitCount < 30) {
                    ref.read(splitCounterProvider.notifier).state =
                        splitCount + 1;
                  }
                },
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
