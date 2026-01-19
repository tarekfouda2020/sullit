
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../features/user/cart/domain/models/payment_option.dart';
import '../constants/gaps.dart';
import '../theme/text/app_text_style.dart';
import 'CachedImage.dart';
import 'custom_decoration.dart';
import 'custom_radio_widget.dart';

class PayOptionItemWidget extends StatelessWidget {
  final void Function() onTap;
  final  PaymentOption payOption;
  const PayOptionItemWidget({super.key, required this.onTap, required this.payOption});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: CustomDecoration(
            myBoxShadow: const [],
            boxBorder:
            Border.all(
                color: payOption.fakeSelected ? context.colors.primary : context.colors.borderColor)),
        child: Row(
          children: [
            CustomRadioWidget(
              selected: payOption.fakeSelected,
              inActiveColor: context.colors.black,
            ),
            Gaps.hGap14,
            Expanded(
              child: Text(payOption.title, style: AppTextStyle.s14_w700(color: context.colors.black)),
            ),
            CachedImage(
              url: payOption.image,
              width: 30,
              height: 26,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
