import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/res.dart';

class GiftCardItemWidget extends StatelessWidget {
  final bool isMyGiftCard;
  const GiftCardItemWidget({super.key, required this.isMyGiftCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>AutoRouter.of(context).push(GiftCardDetailsRoute(isMyGiftCard: isMyGiftCard)),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: CustomDecoration(radius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedImage(
                  url: "",
                  width: 72,
                  height: 72,
                  placeHolder: Image.asset(Res.giftCardPlaceholder),
                ),
                Gaps.hGap15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: "Save", style: AppTextStyle.s14_w400(color: context.colors.black)),
                      TextSpan(text: "50%", style: AppTextStyle.s14_w700(color: context.colors.black)),
                      TextSpan(text: "on your order", style: AppTextStyle.s14_w400(color: context.colors.black)),
                    ])),
                    Gaps.vGap8,
                    Row(
                      children: [
                        if(!isMyGiftCard)
                        Text(tr("payOnly"), style: AppTextStyle.s16_w400(color: context.colors.black)),
                        if(!isMyGiftCard)
                        Gaps.hGap8,
                        Text("50.00 AED", style: AppTextStyle.s22_w600(color: context.colors.primary)),
                      ],
                    ),
                    Gaps.vGap8,
                    Row(
                      children: [
                        Text(tr("andGetPurchasesWith"), style: AppTextStyle.s12_w400(color: context.colors.textColor)),
                        Gaps.hGap2,
                        Text("100.00 AED", style: AppTextStyle.s12_w700(color: context.colors.black)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Visibility(
                visible: !isMyGiftCard,
                replacement: Gaps.empty,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap17,
                    Gaps.line(context.colors.textColor, 0),
                    Gaps.vGap17,
                    Text(tr("validFor30Days"), style: AppTextStyle.s12_w400(color: context.colors.textColor)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
