import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimens {
  static double cardBorderRadius = 10.w;

  static const double font_sp10 = 10.0;
  static const double font_sp12 = 12.0;
  static const double font_sp14 = 14.0;
  static const double font_sp15 = 15.0;
  static const double font_sp16 = 16.0;
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
  static const double dp10 = 10;
  static const double dp12 = 12;
  static const double dp13 = 13;
  static const double dp14 = 14;
  static const double dp15 = 15;
  static const double dp16 = 16;
  static const double dp20 = 20;
  static const double dp22 = 22;
  static const double dp24 = 24;
  static const double dp28 = 28;
  static const double dp30 = 30;
  static const double dp32 = 32;
  static const double dp50 = 50;
  static const double dp40 = 40;
  static const double dp55 = 55;
  static const double dp64 = 64;
  static const double dp70 = 70;
  static const double dp80 = 80;

  static const double dp96 = 96;
  static const double dp128 = 128;
  static const double dp150 = 150;
  static const double dp160 = 160;

  static const double dp200 = 200;
  static const double dp210 = 210;

  static const double dp256 = 256;

  static const double appBarHeight = 62;
  static const double searchBarHeight = 56;

  static const BorderRadius sheetBorderRadius =
      BorderRadius.vertical(top: Radius.circular(20));

  static BorderRadius borderRadius3PX =
      const BorderRadius.all(Radius.circular(3)).r;
  static BorderRadius borderRadius5PX =
      const BorderRadius.all(Radius.circular(5)).r;
  static BorderRadius borderRadius10PX =
      const BorderRadius.all(Radius.circular(10)).r;
  static BorderRadius borderRadius13PX =
      const BorderRadius.all(Radius.circular(13)).r;
  static BorderRadius borderRadius20PX =
      const BorderRadius.all(Radius.circular(20)).r;
  static BorderRadius borderRadius25PX =
      const BorderRadius.all(Radius.circular(25)).r;
  static BorderRadius borderRadius40PX =
      const BorderRadius.all(Radius.circular(40)).r;

  static EdgeInsets authLogoPadding =
      const EdgeInsets.only(top: 50, bottom: 20).r;
  static EdgeInsets inputFieldMargin =
      const EdgeInsets.symmetric(vertical: 15).r;
  static EdgeInsets headerTitlePadding =
      const EdgeInsets.only(top: 8, bottom: 30).r;
  static EdgeInsets standardPadding =
      const EdgeInsets.symmetric(horizontal: dp15, vertical: dp10).r;
  static EdgeInsets cardMargin =
      const EdgeInsets.symmetric(horizontal: dp15, vertical: dp5).r;
  static EdgeInsets paddingH10V20 =
      const EdgeInsets.symmetric(horizontal: dp10, vertical: dp20).r;
  static EdgeInsets paddingH20V10 =
      const EdgeInsets.symmetric(horizontal: dp20, vertical: dp10).r;
  static EdgeInsets paddingH50V10 =
      const EdgeInsets.symmetric(horizontal: dp50, vertical: dp10).r;
  static EdgeInsets paddingH80V10 =
      const EdgeInsets.symmetric(horizontal: dp80, vertical: dp10).r;
  static EdgeInsets paddingH50V40 =
      const EdgeInsets.symmetric(horizontal: dp50, vertical: dp40).r;
  static EdgeInsets paddingH24V40 =
      const EdgeInsets.symmetric(horizontal: dp24, vertical: dp40).r;
  static EdgeInsets paddingT20B10 =
      const EdgeInsets.only(top: dp20, bottom: dp10).r;

  static EdgeInsets paddingVertical5PX =
      const EdgeInsets.symmetric(vertical: 5).r;
  static EdgeInsets paddingVertical8PX =
      const EdgeInsets.symmetric(vertical: 8).r;
  static EdgeInsets paddingVertical10PX =
      const EdgeInsets.symmetric(vertical: 10).r;
  static EdgeInsets paddingVertical15PX =
      const EdgeInsets.symmetric(vertical: 15).r;
  static EdgeInsets paddingVertical20PX =
      const EdgeInsets.symmetric(vertical: 20).r;
  static EdgeInsets paddingVertical30PX =
      const EdgeInsets.symmetric(vertical: 30).r;
  static EdgeInsets paddingVertical40PX =
      const EdgeInsets.symmetric(vertical: 40).r;
  static EdgeInsets paddingVertical60PX =
      const EdgeInsets.symmetric(vertical: 60).r;

  static EdgeInsets paddingHorizontal5PX =
      const EdgeInsets.symmetric(horizontal: 5).r;
  static EdgeInsets paddingHorizontal10PX =
      const EdgeInsets.symmetric(horizontal: 10).r;
  static EdgeInsets paddingHorizontal15PX =
      const EdgeInsets.symmetric(horizontal: 15).r;
  static EdgeInsets paddingHorizontal20PX =
      const EdgeInsets.symmetric(horizontal: 20).r;
  static EdgeInsets paddingHorizontal23PX =
      const EdgeInsets.symmetric(horizontal: 23).r;
  static EdgeInsets paddingHorizontal40PX =
      const EdgeInsets.symmetric(horizontal: 40).r;

  static EdgeInsets paddingAll3PX = const EdgeInsets.all(3).r;
  static EdgeInsets paddingAll5PX = const EdgeInsets.all(5).r;
  static EdgeInsets paddingAll8PX = const EdgeInsets.all(8).r;
  static EdgeInsets paddingAll10PX = const EdgeInsets.all(10).r;
  static EdgeInsets paddingAll15PX = const EdgeInsets.all(15).r;
  static EdgeInsets paddingAll13PX = const EdgeInsets.all(13).r;
  static EdgeInsets paddingAll20PX = const EdgeInsets.all(20).r;

  static EdgeInsets marginTop70 = const EdgeInsets.only(top: 70).r;
  static EdgeInsets marginTop10 = const EdgeInsets.only(top: 10).r;
  static EdgeInsets marginTop23 = const EdgeInsets.only(top: 23).r;
  static EdgeInsets marginTop23B40 =
      const EdgeInsets.only(top: 23, bottom: 40).r;
  static EdgeInsets marginLeft10 = const EdgeInsets.only(left: 10).r;
}
