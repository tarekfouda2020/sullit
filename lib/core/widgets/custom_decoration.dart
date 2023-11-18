import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

class CustomDecoration extends BoxDecoration {
  final Color? thisColor;
  final List<BoxShadow>? myBoxShadow;

  const CustomDecoration({this.thisColor,this.myBoxShadow});

  @override
  Color? get color =>thisColor?? Colors.white;

  @override
  BorderRadiusGeometry? get borderRadius => Dimens.borderRadius5PX;

  @override
  List<BoxShadow>? get boxShadow =>myBoxShadow?? [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          blurRadius: 1,
          spreadRadius: .5,
        )
      ];
}
