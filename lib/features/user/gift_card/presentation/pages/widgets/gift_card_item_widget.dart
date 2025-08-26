import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/res.dart';

class GiftCardItemWidget extends StatelessWidget {
  final bool isMyGiftCard;
  final GiftCardDomainModel model;
  final void Function() onTap;

  const GiftCardItemWidget(
      {super.key,
      required this.isMyGiftCard,
      required this.model,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                Image.asset(
                  Res.giftCardPlaceholder,
                  width: 72,
                  height: 72,
                ),
                Gaps.hGap15,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        overflow: TextOverflow.ellipsis,
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.vGap8,
                      Row(
                        children: [
                          if (!isMyGiftCard)
                            Text(tr("payOnly"),
                                style: AppTextStyle.s16_w400(
                                    color: context.colors.black)),
                          if (!isMyGiftCard) Gaps.hGap8,
                          Text(
                              getIt<Utilities>()
                                  .parseCurrency(model.price),
                              style: AppTextStyle.s22_w600(
                                  color: context.colors.primary)),
                        ],
                      ),
                      Gaps.vGap8,
                      Row(
                        children: [
                          Text(tr("andGetPurchasesWith"),
                              style: AppTextStyle.s12_w400(
                                  color: context.colors.textColor)),
                          Gaps.hGap2,
                          Text(
                              getIt<Utilities>()
                                  .parseCurrency(model.value),
                              style: AppTextStyle.s12_w700(
                                  color: context.colors.black)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Visibility(
                visible: isMyGiftCard,
                replacement: Gaps.empty,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap17,
                    Gaps.line(context.colors.textColor, 0),
                    Gaps.vGap17,
                    Text(
                        "${tr("validForExpiredDays")} ${model.expiredInDays} ${tr("days")}",
                        style: AppTextStyle.s12_w400(
                            color: context.colors.textColor)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
