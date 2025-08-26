import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dimens.dart';

class Gaps {
  const Gaps._();

  static Widget hGap2 = const SizedBox(width: Dimens.dp2);
  static Widget hGap3 = const SizedBox(width: Dimens.dp3);
  static Widget hGap4 = const SizedBox(width: Dimens.dp4);
  static Widget hGap5 = const SizedBox(width: Dimens.dp5);
  static Widget hGap6 = const SizedBox(width: Dimens.dp6);
  static Widget hGap7 = const SizedBox(width: Dimens.dp6);
  static Widget hGap8 = const SizedBox(width: Dimens.dp8);
  static Widget hGap9 = const SizedBox(width: Dimens.dp9);
  static Widget hGap10 = const SizedBox(width: Dimens.dp10);
  static Widget hGap11 = const SizedBox(width: Dimens.dp11);
  static Widget hGap12 = const SizedBox(width: Dimens.dp12);
  static Widget hGap13 = const SizedBox(width: Dimens.dp13);
  static Widget hGap14 = const SizedBox(width: Dimens.dp14);
  static Widget hGap15 = const SizedBox(width: Dimens.dp15);
  static Widget hGap16 = const SizedBox(width: Dimens.dp16);
  static Widget hGap17 = const SizedBox(width: Dimens.dp17);
  static Widget hGap18 = const SizedBox(width: Dimens.dp18);
  static Widget hGap19 = const SizedBox(width: Dimens.dp19);
  static Widget hGap20 = const SizedBox(width: Dimens.dp20);
  static Widget hGap22 = const SizedBox(width: Dimens.dp22);
  static Widget hGap32 = const SizedBox(width: Dimens.dp32);

  static Widget hGap(int value) => SizedBox(width: value.w);

  static Widget vGap3 = const SizedBox(height: Dimens.dp3);
  static Widget vGap4 = const SizedBox(height: Dimens.dp4);
  static Widget vGap5 = const SizedBox(height: Dimens.dp5);
  static Widget vGap6 = const SizedBox(height: Dimens.dp6);
  static Widget vGap7 = const SizedBox(height: Dimens.dp7);
  static Widget vGap8 = const SizedBox(height: Dimens.dp8);
  static Widget vGap9 = const SizedBox(height: Dimens.dp9);
  static Widget vGap10 = const SizedBox(height: Dimens.dp10);
  static Widget vGap11 = const SizedBox(height: Dimens.dp11);
  static Widget vGap12 = const SizedBox(height: Dimens.dp12);
  static Widget vGap13 = const SizedBox(height: Dimens.dp13);
  static Widget vGap14 = const SizedBox(height: Dimens.dp14);
  static Widget vGap15 = const SizedBox(height: Dimens.dp15);
  static Widget vGap16 = const SizedBox(height: Dimens.dp16);
  static Widget vGap17 = const SizedBox(height: Dimens.dp17);
  static Widget vGap18 = const SizedBox(height: Dimens.dp18);
  static Widget vGap19 = const SizedBox(height: Dimens.dp19);
  static Widget vGap20 = const SizedBox(height: Dimens.dp20);
  static Widget vGap21 = const SizedBox(height: Dimens.dp21);
  static Widget vGap22 = const SizedBox(height: Dimens.dp22);
  static Widget vGap23 = const SizedBox(height: Dimens.dp23);
  static Widget vGap24 = const SizedBox(height: Dimens.dp24);
  static Widget vGap25 = const SizedBox(height: Dimens.dp25);
  static Widget vGap30 = const SizedBox(height: Dimens.dp30);
  static Widget vGap32 = const SizedBox(height: Dimens.dp32);
  static Widget vGap34 = const SizedBox(height: Dimens.dp34);
  static Widget vGap35 = const SizedBox(height: Dimens.dp35);
  static Widget vGap50 = const SizedBox(height: Dimens.dp50);
  static Widget vGap55 = const SizedBox(height: Dimens.dp55);
  static Widget vGap60 = const SizedBox(height: Dimens.dp60);
  static Widget vGap64 = const SizedBox(height: Dimens.dp64);
  static Widget vGap128 = const SizedBox(height: Dimens.dp128);
  static Widget vGap256 = const SizedBox(height: Dimens.dp256);

  static Widget vGap(double value) => SizedBox(height: value);

  static Widget line(Color color, double height) =>
      Divider(color: color, height: height);

  static Widget vLine(Color color, double height) => SizedBox(
        width: 0.6,
        height:height,
        child: VerticalDivider(color: color),
      );

  static const Widget empty = Offstage(
    offstage: true,
    child: SizedBox.shrink(),
  );
}
