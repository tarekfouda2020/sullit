import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/core/extensions/auth_extension.dart';

class BuildDrawerHeader extends StatelessWidget {
  const BuildDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
    bool auth = context.isAuth;
    return Padding(
      padding: Dimens.paddingAll15PX,
      child: Column(
        children: [
          Gaps.vGap20,
          Center(
            child: Image.asset(
              Res.newAuthLogo,
              width: 160.w,
              height: 80.h,
            ),
          ),
          Visibility(
            visible: auth,
            child: Padding(
              padding: Dimens.paddingVertical5PX,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CachedImage(
                    fit: BoxFit.cover,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    height: 55.r,
                    width: 55.r,
                    placeHolder: Image.asset(
                      Res.profile,
                      height: 55.r,
                      width: 55.r,
                    ),
                    url: user?.avatarOriginal ?? "",
                  ),
                  Gaps.hGap15,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user?.name ?? "",
                          style: AppTextStyle.s16_w500(
                            color: context.colors.black,
                          ),
                        ),
                        Gaps.vGap5,
                        Text(
                          user?.fullPhone ?? "",
                          style: AppTextStyle.s14_w400(
                            color: context.colors.blackOpacity,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
