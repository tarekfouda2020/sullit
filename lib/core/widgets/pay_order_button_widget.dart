import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';

class PayOrderButtonWidget extends StatelessWidget {
  final Color? txtColor;
  final Color? bgColor;
  final void Function() onPressPay;

  const PayOrderButtonWidget({
    super.key,
    this.txtColor,
    this.bgColor,
    required this.onPressPay,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: onPressPay,
      title: tr("pay"),
      height: Dimens.dp40,
      color: bgColor ?? context.colors.green,
      margin: EdgeInsets.zero,
      textColor: txtColor ?? context.colors.white,
      borderColor: context.colors.green,
    );
  }
}
