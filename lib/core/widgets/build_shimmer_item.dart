import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerItem extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape? boxShape;
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  const BuildShimmerItem({
    Key? key,
    this.width,
    this.boxShape,
    this.margin,
    this.height,
    this.borderRadius,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colors.offWhite,
      highlightColor: context.colors.white,
      child: child ??
          Container(
            width: width ?? MediaQuery.of(context).size.width,
            height: height,
            margin: margin ?? const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: context.colors.offWhite,
              shape: boxShape ?? BoxShape.rectangle,
              borderRadius:
              borderRadius ?? BorderRadius.circular(height! > 15 ? 5 : 0),
            ),
          ),
    );
  }
}
