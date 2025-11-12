import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/theme/colors/app_dark_colors.dart';
import 'package:flutter_tdd/core/theme/colors/app_light_colors.dart';

abstract class AppColors {
  static final AppDarkColors _dark = AppDarkColors();
  static final AppLightColors _light = AppLightColors();

  static const Color snackBarGreenSuccess = Color(0xff03A89E);
  static const Color snackBarRedError = Color(0xffBF1C00);
  static const Color snackBarYellowAlert = Color(0xfffea632);

  static AppColors get noContextInstance =>
      getIt.get<GlobalContext>().context().read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark
          ? _dark
          : _light;

  static AppColors of(BuildContext context) =>
      context.read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark ? _dark : _light;

  Color get primary;

  Color get secondary;

  Color get grey;

  Color get greyWhite;

  Color get blackOpacity;

  Color get appBarColor;

  Color get white;

  Color get black;

  Color get darkPurple;

  Color get background;

  Color get customBackground;

  Color get scaffoldBg;

  Color get disableGray;

  Color get gray;

  Color get blue;

  Color get yellow;

  Color get green;

  Color get blueAccent;

  Color get shadowColor;

  Color get transparent;

  Color get drawerColor;

  Color get offWhite;

  Color get purpleDark;

  Color get purpleLight;

  Color get bloodyRed;

  Color get authField;

  Color get textColor;

  Color get splashColor;

  Color get borderColor;

  Color get lightPink;

  Color get darkRed;

  Color get gold;

  Color get gray2;

  Color get lightPrimary;

  Color get deepGray;

  Color get gray3;

  Color get softGray;

  Color get gray4;

  Color get gray5;

  Color get redAccent;

  Color get cartBg;

  Color get bgIcon;

  Color get green2;

  Color get blackTextColor;

  Color get lightRed;

  Color get darkPrimary;

  Color get gray8;
  Color get lightGreen;
}
