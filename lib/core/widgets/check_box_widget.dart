import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool value;
  final void Function(bool? value)? onChange;
  const CheckBoxWidget({super.key, required this.value, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: context.colors.white,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      activeColor: context.colors.primary,
      visualDensity: VisualDensity.compact,
      fillColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return context.colors.white;
        }
        if (states.contains(WidgetState.selected)) {
          return context.colors.primary;
        }
        return Colors.transparent;
      }),
      value: value,
      onChanged: onChange,
      side: BorderSide(
        color: context.colors.textColor,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: Dimens.borderRadius4PX,
      ),
    );
  }
}
