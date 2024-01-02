import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class BuildEmptyDataImage extends StatelessWidget {
  const BuildEmptyDataImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).pop(),
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          Res.emptyCart,
          scale: 3,
        ),
      ),
    );
  }
}
