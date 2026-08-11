import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/core/extensions/auth_extension.dart';

class PharmSloganBannerWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final void Function() onTap;

  const PharmSloganBannerWidget({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> _onTap(context),
      child: Container(
        padding: Dimens.paddingH10V10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              context.colors.pharmSloganDark,
              context.colors.oceanBlue,
            ],
          ),
        ),
        child: Row(
          children: [
            Gaps.hGap10,
            SvgPicture.asset(
              Res.pharmSlogan,
              width: Dimens.dp30,
              height: Dimens.dp50,
            ),
            Gaps.hGap15,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: AppTextStyle.s15_w400(color: context.colors.white),
                  ),
                  Gaps.vGap8,
                  Text(
                    secondText,
                    style: AppTextStyle.s22_w700(color: context.colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 42,
              decoration: BoxDecoration(
                  color: context.colors.white, shape: BoxShape.circle),
              child: _buildTransform(context),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
      if(context.isAuth){
      onTap();
    }else{
      CustomToast.showAuthDialog(context,);
    }
  }

  Transform _buildTransform(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Transform.rotate(
      angle: lang == LangCodeHelper.langAR ? pi : 0,
      child: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(
            Res.arrowForward,
            colorFilter: ColorFilter.mode(
                context.colors.pharmSloganDark, BlendMode.srcIn),
          )),
    );
  }
}
