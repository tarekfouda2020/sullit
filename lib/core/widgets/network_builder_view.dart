import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';

class NetworkBuilderView extends StatelessWidget {
  final Widget child;

  const NetworkBuilderView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return internetConnectivityBuilder(
      (ConnectivityStatus status) {
        if (status == ConnectivityStatus.offine) {
          return Scaffold(
            backgroundColor: context.colors.white,
            body: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Res.offline,
                    width: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                       tr('noInternet'),
                      style: AppTextStyle.s20_w500(color: context.colors.primary),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: context.colors.primary),
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                       tr('tryAgain'),
                        style: AppTextStyle.s16_w500(color: context.colors.primary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return child;
        }
      },
    );
  }
}
