
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';

class OrderGrandTotalWidget extends StatelessWidget {
  final String amount;
  const OrderGrandTotalWidget({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 17),
      decoration: BoxDecoration(
        color: context.colors.lightGreen,
        border: Border.all(color: context.colors.gray3),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12))
      ),
      child: Row(
        children: [
          Text("Grand Total",
          style: AppTextStyle.s16_w500(color: context.colors.green),
          ),
          Gaps.hGap3,
          Expanded(
            child: Text("(Amount Charged)",
              style: AppTextStyle.s14_w500(color: context.colors.green),
            ),
          ),
          DirhamPrice(amount: amount,
          textStyle: AppTextStyle.s18_w700(color: context.colors.green),
            currencyOffset: 0,
            currencyStyle: AppTextStyle.s20_w700(color: context.colors.green) ,
          )

        ],
      ),
    );
  }
}
