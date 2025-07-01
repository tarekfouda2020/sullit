import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_details/widgets/order_details_widgets_imports.dart';

class OrderDetailsProductsWidget extends StatelessWidget {
  final bool isReturned;
  final bool hasReview;
  final void Function()? onPressTrackShipment;
  final EdgeInsetsGeometry? margin;

  const OrderDetailsProductsWidget({
    super.key,
    required this.isReturned,
    required this.hasReview,
    this.onPressTrackShipment,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
      margin: margin,
      decoration: const CustomDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Sold By :",
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap7,
              Text(
                "Munch Corner",
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap12,
          ...List.generate(2, (index) {
            return const OrderDetailsProductItemWidget(
              hasReview: false,
            );
          }),
          if (!isReturned)
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: GestureDetector(
                onTap: onPressTrackShipment,
                child: Row(
                  children: [
                    Text(
                      "Track Shipment",
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                    Gaps.hGap10,
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: context.colors.primary,
                    ),
                    const Spacer(),
                    Text(
                      "Shipped",
                      style: AppTextStyle.s14_w700(color: context.colors.black),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
