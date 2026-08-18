
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class OrderPharamCardWidget extends StatelessWidget {
  final String url;
  final String text;
  const OrderPharamCardWidget({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        border: Border.all(color: context.colors.gray3),
        borderRadius: Dimens.borderRadius10PX,
        boxShadow: [
          BoxShadow(
            color: context.colors.gray7.withAlpha(100),
            offset: const Offset(0, 4),
            blurRadius: 4
          ),
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          CachedImage(url: url ,
          width: 44,
            height:43 ,
            fit: BoxFit.contain,
          ),
          Text(text,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s16_w600(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
