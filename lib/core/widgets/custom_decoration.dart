import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

class CustomDecoration extends BoxDecoration {
  final Color? thisColor;
  final List<BoxShadow>? myBoxShadow;
  final BorderRadiusGeometry? radius;
  final BoxBorder? boxBorder;
  final BoxShape? boxShape;

  const CustomDecoration( {this.thisColor,this.myBoxShadow,this.radius, this.boxBorder,this.boxShape});

  @override
  Color? get color =>thisColor?? Colors.white;

  @override

  BoxShape get shape => boxShape ?? super.shape;

  @override
  BorderRadiusGeometry? get borderRadius => boxShape==BoxShape.circle ? null : radius ?? Dimens.borderRadius5PX;

  @override
  BoxBorder? get border => boxBorder ?? super.border;

  @override
  List<BoxShadow>? get boxShadow =>myBoxShadow?? [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          blurRadius: 1,
          spreadRadius: .5,
        )
      ];
}
