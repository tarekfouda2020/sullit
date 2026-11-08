import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class CountryCodePrefixWidget extends StatelessWidget {
  final GenericBloc<CountryCode?> countryCubit;
  final void Function()? afterSelect;

  const CountryCodePrefixWidget({
    super.key,
    required this.countryCubit,
    this.afterSelect,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<CountryCode?>, GenericState<CountryCode?>>(
      bloc: countryCubit,
      builder: (context, state) {
        final country = state.data;
        return GestureDetector(
          onTap: () async {
            final selected =
                await const FlCountryCodePicker().showPicker(context: context);
            if (selected != null) {
              countryCubit.onUpdateData(selected);
              afterSelect?.call();
            }
          },
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 23),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (country != null) country.flagImage(width: 25),
                Gaps.hGap5,
                Text(
                  country?.dialCode ?? "",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                Gaps.hGap5,
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: context.colors.black,
                ),
                Gaps.hGap17,
              ],
            ),
          ),
        );
      },
    );
  }
}
