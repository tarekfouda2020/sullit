import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CustomRadioWidget extends StatelessWidget {
  final bool selected;
  final double? size;
  final double? padding;
  final Color? inActiveColor;
  const CustomRadioWidget(
      {super.key,
      required this.selected,
      this.size,
      this.padding,
      this.inActiveColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 20,
      height: size ?? 20,
      padding: EdgeInsets.all(padding ?? 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: selected
                ? context.colors.primary
                : inActiveColor ?? context.colors.textColor,
            width: 1.5),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: selected ? context.colors.primary : Colors.transparent,
            shape: BoxShape.circle),
      ),
    );
  }
}
