import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class BuildAuthDialog extends StatelessWidget {
  const BuildAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(cardColor: context.colors.white),
      child: CupertinoAlertDialog(
        title: Text(tr('loginToContinue'),
            style: TextStyle(color: context.colors.black)),
        actions: [
          CupertinoDialogAction(
            child: Text(
              tr('comeBack'),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          CupertinoDialogAction(
            child: Text(
              tr('login'),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
              BuildContext ctx = getIt<GlobalContext>().context();
              AutoRouter.of(ctx).push(
                const LoginRoute(),
              );
            },
          ),
        ],
      ),
    );
  }
}
