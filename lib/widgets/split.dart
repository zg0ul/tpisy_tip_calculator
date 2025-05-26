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
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Split",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
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
                      color: textColor,
                      fontSize: 28,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Text(
                splitCount.toString(),
                style: const TextStyle(
                  fontFamily: "Karmilla",
                  fontWeight: FontWeight.w700,
                  color: textColor,
                  fontSize: 32,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 30),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
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
                      color: textColor,
                      fontSize: 24,
                      letterSpacing: 0.5,
                    ),
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
