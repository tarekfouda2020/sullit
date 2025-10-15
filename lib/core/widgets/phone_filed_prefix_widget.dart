import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/country_picker_helper.dart';
import 'package:flutter_tdd/core/package/country_calling_code_picker-2.0.1/lib/country.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class PhoneFieldPrefixWidget extends StatelessWidget {
  final void Function()? afterSelect;
  final GenericBloc<Country?> countryCubit;

  const PhoneFieldPrefixWidget({super.key, this.afterSelect, required this.countryCubit});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          return ;
          Country? country = await CountryPickerHelper.pickCountry(context);
          if (country != null) {
            countryCubit.onUpdateData(country);
            afterSelect?.call();
          }
        },
        child: Visibility(
          visible: countryCubit.state.data?.name != "",
          replacement: Padding(
            padding: const EdgeInsetsDirectional.only(start: 23, top: 16, end: 17),
            child: Text(
              "Select Country",
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 23),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (countryCubit.state.data?.flag != null)
                  Image.asset(
                    countryCubit.state.data!.flag,
                    width: 25,
                    height: 25,
                    package: "country_calling_code_picker",
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          Icons.flag,
                          size: 16,
                          color: context.colors.grey,
                        ),
                      );
                    },
                  ),
                Gaps.hGap5,
                Text(
                  countryCubit.state.data?.callingCode ?? "",
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
        ));
  }
}
