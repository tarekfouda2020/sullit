import 'dart:io';

import 'package:flutter/material.dart';

class CustomBottomSafeAreaWidget extends StatelessWidget {
  final Widget child;
  final double? iosPaddingBottom;
  const CustomBottomSafeAreaWidget({super.key, required this.child, this.iosPaddingBottom});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        left: false,
        right: false,
        maintainBottomViewPadding: true,
        bottom: Platform.isIOS
        ?false
        :true,
        child: Padding(
          padding:  EdgeInsets.only(
              bottom: Platform.isIOS
                  ? iosPaddingBottom ?? 30
                  :0),
          child: child,
        )
    );
  }
}
