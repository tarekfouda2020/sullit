import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

enum LoyaltyPointTypeEnum {
  gained,
  deduct;

  String get title {
    switch (this) {
      case gained:
        return "Gained";
      case deduct:
        return "Deduct";
    }
  }

  Color getColor(BuildContext context) {
    switch (this) {
      case gained:
        return context.colors.green2;
      case deduct:
        return context.colors.darkRed;
    }
  }
}
