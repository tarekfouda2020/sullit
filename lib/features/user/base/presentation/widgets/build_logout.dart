import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';

class BuildLogOut extends StatelessWidget {
  final HomeController controller;

  const BuildLogOut({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    return InkWell(
      onTap: () => controller.checkAuth(context),
      child: Container(
        width: 150.w,
        padding: Dimens.paddingAll10PX,
        margin: Dimens.paddingVertical20PX,
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: Dimens.borderRadius5PX,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              auth ? "Logout" : 'Login',
              style: AppTextStyle.s16_w500(
                color: context.colors.white,
              ),
            ),
            Gaps.hGap5,
            Icon(
              auth ? Icons.logout_rounded : Icons.login_rounded,
              size: 20.sp,
              color: context.colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
