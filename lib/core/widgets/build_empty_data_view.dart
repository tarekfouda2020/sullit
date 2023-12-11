import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/res.dart';

class BuildEmptyDataView extends StatelessWidget {
  const BuildEmptyDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>AutoRouter.of(context).pop(),
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
