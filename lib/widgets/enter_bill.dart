import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/providers.dart';
import '../utils/styles/colors.dart';

class EnterBillWidget extends ConsumerWidget {
  const EnterBillWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter bill total",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.attach_money_rounded,
                    size: 35,
                    color: textColor,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        letterSpacing: 0.5,
                      ),
                      onChanged: (value) {
                        print(value);
                        ref.read(totalBillProvider.notifier).state =
                            double.tryParse(value) ?? 0.0;
                      },
                      decoration: const InputDecoration(
                        hintText: "59.46",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 32,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor, width: 2),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
