import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/providers.dart';
import '../utils/styles/colors.dart';

class EnterBillWidget extends ConsumerWidget {
  const EnterBillWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      // margin: const EdgeInsets.only(top: 30, left: 60, right: 60),
      width: 250,
      // height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter bill total",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.attach_money_rounded,
                    size: 25,
                    color: textColor,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        letterSpacing: 0.5,
                      ),
                      onChanged: (value) {
                        print(value);

                        ref.read(totalBillProvider.notifier).state =
                            double.tryParse(value) ?? 0.0;
                      },
                      decoration: const InputDecoration(
                        // icon: Icon(
                        //   Icons.attach_money_rounded,
                        //   size: 25,
                        //   color: textColor,
                        // ),
                        hintText: "59.46",
                        border: UnderlineInputBorder(),
                      ),
                      expands: false,
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
