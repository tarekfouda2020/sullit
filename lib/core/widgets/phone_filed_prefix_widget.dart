
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/country_picker_helper.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class PhoneFieldPrefixWidget extends StatelessWidget {
  final void Function()? afterSelect;
  final GenericBloc<Country?> countryCubit;
  const PhoneFieldPrefixWidget({super.key, this.afterSelect, required this.countryCubit});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        var country = await CountryPickerHelper.pickCountry(context);
         if(country!=null){
           countryCubit.onUpdateData(country);
           afterSelect?.call();
         }
      },
      child: Visibility(
        visible: countryCubit.state.data?.name != "",
        replacement: Padding(
          padding: const EdgeInsetsDirectional.only(start: 23,top: 16,end: 17),
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
              Image.asset(
                countryCubit.state.data!.flag,
                width: 25,
                height: 25,
                package: "country_calling_code_picker",
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
      ),
    );
  }
}
