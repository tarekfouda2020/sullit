import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/res.dart';

class BuildHeaderLogo extends StatelessWidget {
  const BuildHeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20+kToolbarHeight,bottom: 45),
      child: Center(
        child: Image.asset(Res.logoPng, width: 163.r, height: 56.r),
      ),
    );
  }
}
