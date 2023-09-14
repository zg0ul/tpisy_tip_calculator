import 'package:flutter/material.dart';
import 'package:tipsy_tip_calculator/utils/colors.dart';

class EnterBillWidget extends StatelessWidget {
  const EnterBillWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.attach_money_rounded,
                    size: 25,
                    color: textColor,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        letterSpacing: 0.5,
                      ),
                      decoration: InputDecoration(
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
