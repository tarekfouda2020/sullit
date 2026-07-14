import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/res.dart';

class AllowReplacementWidget extends StatelessWidget {
  final GenericBloc<bool> allowReplacementCubit;
  final void Function(bool value) onToggle;

  const AllowReplacementWidget({
    super.key,
    required this.allowReplacementCubit,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 16, top: 15, end: 16, bottom: 9),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        thisColor: context.colors.lightPrimary,
        boxBorder: Border.all(color: context.colors.lightPrimary),
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            children: [
              SvgPicture.asset(Res.redWarningIcon),
              Gaps.hGap7,
              Expanded(
                child: Text(
                  tr("allow_items_replacement"),
                  style: AppTextStyle.s16_w500(color: context.colors.bloodyRed),
                ),
              ),
              Gaps.hGap5,
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: allowReplacementCubit,
                builder: (context, state) {
                  return FlutterSwitch(
                    value: state.data,
                    onToggle: onToggle,
                    width: 32,
                    height: 18,
                    toggleSize: 18,
                    toggleBorder: Border.all(
                      color: context.colors.borderColor,
                    ),
                    activeColor: context.colors.primary,
                    inactiveToggleColor: const Color(0xffF0F0F0),
                    inactiveColor: const Color(0xffDBD6D6),
                    padding: 0,
                  );
                },
              )
            ],
          ),
          Text(
            tr("replacement_info"),
            style: AppTextStyle.s11_w500(color: context.colors.black)
                .copyWith(height: 1.3),
          )
        ],
      ),
    );
  }
}
