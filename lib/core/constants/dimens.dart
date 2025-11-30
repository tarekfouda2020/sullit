import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimens {
  static double cardBorderRadius = 10.w;

  static double iosBottomDp(BuildContext context) => Platform.isIOS
      ?MediaQuery.paddingOf(context).bottom + 13
      : 8;

  static const double font_sp10 = 10.0;
  static const double font_sp12 = 12.0;
  static const double font_sp14 = 14.0;
  static const double font_sp15 = 15.0;
  static const double font_sp16 = 16.0;
  static const double font_sp17 = 17.0;
  static const double font_sp18 = 18.0;
  static const double font_sp20 = 20.0;
  static const double font_sp22 = 22.0;
  static const double font_sp24 = 24.0;
  static const double font_sp26 = 26.0;
  static const double font_sp28 = 28.0;
  static const double font_sp30 = 30.0;
  static const double font_sp32 = 32.0;
  static const double font_sp38 = 38.0;

  static const double dp1 = 1;
  static const double dp2 = 2;
  static const double dp3 = 3;
  static const double dp4 = 4;
  static const double dp6 = 6;
  static const double dp5 = 5;
  static const double dp7 = 7;
  static const double dp8 = 8;
  static const double dp9 = 9;
  static const double dp10 = 10;
  static const double dp11 = 11;
  static const double dp12 = 12;
  static const double dp13 = 13;
  static const double dp14 = 14;
  static const double dp15 = 15;
  static const double dp16 = 16;
  static const double dp17 = 17;
  static const double dp18 = 18;
  static const double dp19 = 19;
  static const double dp20 = 20;
  static const double dp21 = 21;
  static const double dp22 = 22;
  static const double dp23 = 23;
  static const double dp24 = 24;
  static const double dp25 = 25;
  static const double dp26 = 26;
  static const double dp28 = 28;
  static const double dp29 = 29;
  static const double dp30 = 30;
  static const double dp32 = 32;
  static const double dp34 = 34;
  static const double dp35 = 35;
  static const double dp50 = 50;
  static const double dp40 = 40;
  static const double dp55 = 55;
  static const double dp60 = 60;
  static const double dp64 = 64;
  static const double dp70 = 70;
  static const double dp80 = 80;

  static const double dp96 = 96;
  static const double dp128 = 128;
  static const double dp150 = 150;
  static const double dp160 = 160;

  static const double dp200 = 200;
  static const double dp205 = 205;
  static const double dp210 = 210;
  static const double dp220 = 220;

  static const double dp256 = 256;

  static const double appBarHeight = 62;
  static const double searchBarHeight = 56;

  static const BorderRadius sheetBorderRadius = BorderRadius.vertical(top: Radius.circular(30));

  static BorderRadius borderRadius3PX = const BorderRadius.all(Radius.circular(3)).r;
  static BorderRadius borderRadius4PX = const BorderRadius.all(Radius.circular(4)).r;
  static BorderRadius borderRadius5PX = const BorderRadius.all(Radius.circular(5)).r;
  static BorderRadius borderRadius8PX = const BorderRadius.all(Radius.circular(8)).r;
  static BorderRadius borderRadius10PX = const BorderRadius.all(Radius.circular(10)).r;
  static BorderRadius borderRadius13PX = const BorderRadius.all(Radius.circular(13)).r;
  static BorderRadius borderRadius12PX = const BorderRadius.all(Radius.circular(12)).r;
  static BorderRadius borderRadius15PX = const BorderRadius.all(Radius.circular(15)).r;
  static BorderRadius borderRadius20PX = const BorderRadius.all(Radius.circular(20)).r;
  static BorderRadius borderRadius25PX = const BorderRadius.all(Radius.circular(25)).r;
  static BorderRadius borderRadius30PX = const BorderRadius.all(Radius.circular(30)).r;
  static BorderRadius borderRadius40PX = const BorderRadius.all(Radius.circular(40)).r;

  static EdgeInsets authLogoPadding = const EdgeInsets.only(top: 50, bottom: 20).r;
  static EdgeInsets inputFieldMargin = const EdgeInsets.symmetric(vertical: 15).r;
  static EdgeInsets headerTitlePadding = const EdgeInsets.only(top: 8, bottom: 24);
  static EdgeInsets standardPadding = const EdgeInsets.symmetric(horizontal: dp15, vertical: dp10).r;
  static EdgeInsets cardMargin = const EdgeInsets.symmetric(horizontal: dp15, vertical: dp5).r;
  static EdgeInsets paddingH10V5 = const EdgeInsets.symmetric(horizontal: dp10, vertical: dp5).r;
  static EdgeInsets paddingH10V10 = const EdgeInsets.symmetric(horizontal: dp10, vertical: dp10).r;
  static EdgeInsets paddingH10V15 = const EdgeInsets.symmetric(horizontal: dp10, vertical: dp15).r;
  static EdgeInsets paddingH10V20 = const EdgeInsets.symmetric(horizontal: dp10, vertical: dp20).r;
  static EdgeInsets paddingH20V10 = const EdgeInsets.symmetric(horizontal: dp20, vertical: dp10).r;
  static EdgeInsets paddingH20V15 = const EdgeInsets.symmetric(horizontal: dp20, vertical: dp15).r;
  static EdgeInsets paddingH35V26 = const EdgeInsets.symmetric(horizontal: dp35, vertical: dp26).r;
  static EdgeInsets paddingH50V10 = const EdgeInsets.symmetric(horizontal: dp50, vertical: dp10).r;
  static EdgeInsets paddingH80V10 = const EdgeInsets.symmetric(horizontal: dp80, vertical: dp10).r;
  static EdgeInsets paddingH50V40 = const EdgeInsets.symmetric(horizontal: dp50, vertical: dp40).r;
  static EdgeInsets paddingH24V40 = const EdgeInsets.symmetric(horizontal: dp24, vertical: dp40).r;
  static EdgeInsets paddingT20B10 = const EdgeInsets.only(top: dp20, bottom: dp10).r;
  static EdgeInsets paddingH12V16 = const EdgeInsets.symmetric(horizontal: dp12, vertical: dp16).r;
  static EdgeInsets paddingH32V16 = const EdgeInsets.symmetric(horizontal: dp32, vertical: dp16).r;
  static EdgeInsets paddingH16V40 = const EdgeInsets.symmetric(horizontal: dp16, vertical: dp40).r;
  static EdgeInsets paddingH17V13 = const EdgeInsets.symmetric(horizontal: 17, vertical: 13).r;

  static EdgeInsets paddingVertical10PXHorizontal20PX = const EdgeInsets.symmetric(vertical: 10, horizontal: 20);

  static EdgeInsets paddingVertical5PX = const EdgeInsets.symmetric(vertical: 5).r;
  static EdgeInsets paddingVertical8PX = const EdgeInsets.symmetric(vertical: 8).r;
  static EdgeInsets paddingVertical9PX = const EdgeInsets.symmetric(vertical: 9).r;
  static EdgeInsets paddingVertical10PX = const EdgeInsets.symmetric(vertical: 10).r;
  static EdgeInsets paddingVertical12PX = const EdgeInsets.symmetric(vertical: 12).r;
  static EdgeInsets paddingVertical15PX = const EdgeInsets.symmetric(vertical: 15).r;
  static EdgeInsets paddingVertical20PX = const EdgeInsets.symmetric(vertical: 20).r;
  static EdgeInsets paddingVertical30PX = const EdgeInsets.symmetric(vertical: 30).r;
  static EdgeInsets paddingVertical36PX = const EdgeInsets.symmetric(vertical: 36).r;
  static EdgeInsets paddingVertical40PX = const EdgeInsets.symmetric(vertical: 40).r;
  static EdgeInsets paddingVertical60PX = const EdgeInsets.symmetric(vertical: 60).r;

  static EdgeInsets paddingHorizontal5PX = const EdgeInsets.symmetric(horizontal: 5).r;

  static EdgeInsets paddingHorizontal10PX = const EdgeInsets.symmetric(horizontal: 10).r;
  static EdgeInsets paddingHorizontal12PX = const EdgeInsets.symmetric(horizontal: 12).r;
  static EdgeInsets paddingHorizontal15PX = const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsets paddingHorizontal20PX = const EdgeInsets.symmetric(horizontal: 20).r;
  static EdgeInsets paddingHorizontal23PX = const EdgeInsets.symmetric(horizontal: 23).r;
  static EdgeInsets paddingHorizontal40PX = const EdgeInsets.symmetric(horizontal: 40).r;

  static EdgeInsetsDirectional paddingStart20 = EdgeInsetsDirectional.only(start: 20.r);
  static EdgeInsetsDirectional paddingStart19 = EdgeInsetsDirectional.only(start: 19.r);
  static EdgeInsetsDirectional paddingEnd19 = const EdgeInsetsDirectional.only(end: 19);

  static EdgeInsetsDirectional paddingS22T10B10 = const EdgeInsetsDirectional.only(start: 22, top: 10, bottom: 10);

  static EdgeInsets paddingAll3PX = const EdgeInsets.all(3).r;
  static EdgeInsets paddingAll5PX = const EdgeInsets.all(5).r;
  static EdgeInsets paddingAll6PX = const EdgeInsets.all(6).r;
  static EdgeInsets paddingAll7PX = const EdgeInsets.all(7).r;
  static EdgeInsets paddingAll8PX = const EdgeInsets.all(8).r;
  static EdgeInsets paddingAll10PX = const EdgeInsets.all(10).r;
  static EdgeInsets paddingAll15PX = const EdgeInsets.all(15).r;
  static EdgeInsets paddingAll13PX = const EdgeInsets.all(13).r;
  static EdgeInsets paddingAll20PX = const EdgeInsets.all(20).r;
  static EdgeInsets marginBottom5 = const EdgeInsets.only(bottom: 5).r;
  static EdgeInsets marginBottom8 = const EdgeInsets.only(bottom: 8).r;
  static EdgeInsets marginBottom12 = const EdgeInsets.only(bottom: 12).r;
  static EdgeInsets marginBottom18 = const EdgeInsets.only(bottom: 18).r;
  static EdgeInsets marginBottom20 = const EdgeInsets.only(bottom: 20).r;
  static EdgeInsets marginBottom24 = const EdgeInsets.only(bottom: 24).r;
  static EdgeInsets marginVertical18 = const EdgeInsets.symmetric(vertical: 18).r;
  static EdgeInsets marginVertical20 = const EdgeInsets.symmetric(vertical: 20).r;

  static EdgeInsets marginTop8Bottom20 = const EdgeInsets.only(top: 8, bottom: 20).r;
  static EdgeInsets marginTop5Bottom12 = const EdgeInsets.only(top: 5, bottom: 12).r;
  static EdgeInsets marginTop5 = const EdgeInsets.only(top: 5).r;
  static EdgeInsets marginTop31 = const EdgeInsets.only(top: 31).r;

  static EdgeInsets marginTop70 = const EdgeInsets.only(top: 70).r;
  static EdgeInsets marginTop22 = const EdgeInsets.only(top: 22).r;
  static EdgeInsets marginTop20 = const EdgeInsets.only(top: 20).r;
  static EdgeInsets marginTop10 = const EdgeInsets.only(top: 10).r;
  static EdgeInsets marginTop8 = const EdgeInsets.only(top: 8).r;

  static EdgeInsets marginTop23 = const EdgeInsets.only(top: 23).r;
  static EdgeInsets marginTop23B40 = const EdgeInsets.only(top: 23, bottom: 40).r;
  static EdgeInsets marginLeft10 = const EdgeInsets.only(left: 10).r;
}
