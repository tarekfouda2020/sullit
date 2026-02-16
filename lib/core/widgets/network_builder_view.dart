import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

import '../localization/localization_methods.dart' show tr;

class NetworkLayerWidget extends StatefulWidget {
  final Widget child;
  final bool isNetworkConnected;

  const NetworkLayerWidget({
    super.key,
    required this.child,
    required this.isNetworkConnected,
  });

  @override
  State<NetworkLayerWidget> createState() => _NetworkLayerWidgetState();
}

class _NetworkLayerWidgetState extends State<NetworkLayerWidget> {
  final GenericBloc<bool> _visibilityObs  = GenericBloc<bool>(false);

  @override
  void didUpdateWidget(covariant NetworkLayerWidget oldWidget) {
    if (!widget.isNetworkConnected) {
      _visibilityObs.onUpdateData(true);
    }else{
      Future.delayed(const Duration(milliseconds: 1000), () {
        _visibilityObs.onUpdateData(false);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: widget.child),
          BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
              bloc: _visibilityObs,
              builder: (context, state) {
                return Visibility(
                  visible: state.data,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
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
                            tr('noInternet',context: context),
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
                              tr('tryAgain',context: context),
                              style: AppTextStyle.s16_w500(color: context.colors.primary),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
