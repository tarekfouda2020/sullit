import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/currency_helper.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

class ProductCardPriceSection extends StatelessWidget {
  final ProductCard productModel;
  final bool? showVipDiscount;

  const ProductCardPriceSection({
    super.key,
    required this.productModel,
    this.showVipDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CurrentPrice(productModel: productModel),
              Gaps.vGap3,
              _OriginalPrice(
                productModel: productModel,
                showVipDiscount: showVipDiscount,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CurrentPrice extends StatelessWidget {
  final ProductCard productModel;

  const _CurrentPrice({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${productModel.variant?.calculablePrice ?? "0.0"} ${CurrencyHelper.symbol}",
        style: AppTextStyle.s16_w400(color: context.colors.primary).copyWith(
          fontFamily: AppTheme.dirhamFontFamily,
          height: 1,
        ),
        ),
        // DirhamPrice(
        //   amount: productModel.variant?.calculablePrice ?? "0.0",
        // ),
        if (productModel.unit.isNotEmpty)
          Flexible(
            child: Text(
              " / ${productModel.unit}",
              style: AppTextStyle.s16_w400(color: context.colors.textColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    );
  }
}

class _OriginalPrice extends StatelessWidget {
  final ProductCard productModel;
  final bool? showVipDiscount;

  const _OriginalPrice({
    required this.productModel,
    this.showVipDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: productModel.showPriceDiscount(showVipDiscount: showVipDiscount),
      child: Row(
        children: [
          Text("${productModel.priceHighLow} ${CurrencyHelper.symbol}",
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                decoration: TextDecoration.lineThrough,
                decorationColor: context.colors.textColor,
                decorationThickness: 1.2,
              )
          ),
          // DirhamPrice(
          //   amount: productModel.priceHighLow,
          //   showMinus: true,
          //   currencyOffset: 1,
          //   color: context.colors.textColor,
          //   textStyle: TextStyle(
          //     overflow: TextOverflow.ellipsis,
          //     decoration: TextDecoration.lineThrough,
          //     decorationColor: context.colors.textColor,
          //     decorationThickness: 1.2,
          //   ),
          // ),
          if (productModel.unit.isNotEmpty)
            Flexible(
              child: Text(
                " / ${productModel.unit}",
                style: AppTextStyle.s16_w400(color: context.colors.textColor)
                    .copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: context.colors.textColor,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
