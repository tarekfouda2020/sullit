import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class BuildAuthAppBar extends StatelessWidget {
  final Function()? onBack;

  const BuildAuthAppBar({
    Key? key,
    this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onBack ?? AutoRouter.of(context).pop,
          child: Container(
            margin: Dimens.marginTop23B40,
            padding: Dimens.paddingAll10PX,
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius40PX,
              color: Colors.transparent,
            ),
            child: Image.asset(Res.arrowBack, width: 24.r, height: 24.r),
          ),
        ),
      ],
    );
  }
}
