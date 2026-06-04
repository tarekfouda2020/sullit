
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class LoadingIconWidget extends StatelessWidget {
  final double? size;
  final EdgeInsetsGeometry? margin;
  const LoadingIconWidget({super.key, this.size, this.margin});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: margin ?? Dimens.paddingAll5PX,
      width: size ?? 18, height: size ?? 18,
      child: const CircularProgressIndicator.adaptive(
        strokeWidth: 2,
      ),
    );
  }
}
