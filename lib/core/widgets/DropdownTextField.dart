import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/input_field_style/custom_input_decoration.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import 'custom_dropDown/CustomDropDown.dart';

class DropdownTextField<T> extends StatelessWidget {
  final dynamic data;
  final GlobalKey? dropKey;
  final String title;
  final String? label;
  final String? hint;
  final String? searchHint;
  final T? selectedItem;
  final Widget? prefixIcon;
  final bool showSelectedItem;
  final EdgeInsets? margin;
  final double? fontSize;
  final double? labelSize;
  final double? textSize;
  final String Function(T item) itemAsString;
  final String? Function(dynamic) validate;
  final ValueChanged<T?>? onChange;
  final Future<List<T>> Function(String text)? onFind;
  final EdgeInsets? arrowBtnPadding;
  final EdgeInsets? clearBtnPadding;
  final EdgeInsets? contentPadding;
  final bool useName;
  final bool showClearButton;
  final Color? enableColor;
  final Color? fillColor;
  final Color? hintColor;
  final Color? buttonsColor;
  final BorderRadius? radius;
  final DropdownSearchPopupItemBuilder<T>? itemBuilder;

  const DropdownTextField(
      {Key? key,
        this.label,
        this.hint,
        this.margin,
        required this.validate,
        required this.title,
        this.contentPadding,
        this.prefixIcon,
        this.clearBtnPadding,
        this.arrowBtnPadding,
        this.useName = true,
        this.showClearButton = true,
        this.searchHint,
        required this.itemAsString,
        this.onChange,
        this.fontSize,
        this.textSize,
        this.labelSize,
        this.hintColor,
        this.fillColor,
        this.buttonsColor,
        this.itemBuilder,
        this.onFind,
        this.dropKey,
        this.data,
        this.enableColor,
        this.selectedItem,
        this.radius,
        this.showSelectedItem = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: DropdownSearch<T>(
        key: dropKey,
        mode: Mode.BOTTOM_SHEET,
        isFilteredOnline: false,
        maxHeight: 350,
        label: label,
        items: data,
        onFind: onFind,
        validator: validate,
        onChanged: onChange,
        showSearchBox: true,
        showClearButton: showClearButton,
        popupItemBuilder: itemBuilder,
        clearButton: Padding(
          padding: clearBtnPadding ??
              const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.clear,
              size: 20, color: buttonsColor ?? Colors.black),
        ),
        dropDownButton: Padding(
          padding: arrowBtnPadding ??
              const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_drop_down,
              size: 24, color: buttonsColor ?? Colors.black),
        ),
        selectedItem: selectedItem,
        itemAsString: itemAsString,
        showSelectedItem: showSelectedItem,
        style: AppTextStyle.s13_w400(color: context.colors.black),
        itemStyle: AppTextStyle.s13_w400(color: context.colors.black),
        searchBoxStyle: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
        searchBoxDecoration: CustomInputDecoration(
            hint: searchHint ?? 'Search',
            enableColor: Colors.black,
            lang: lang,
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        popupTitle: Container(
          height: 50,
          decoration: BoxDecoration(
            color: context.colors.primary,
          ),
          child: Center(
            child: Text(
              label != null ? label! : hint??"",
              style: const AppTextStyle.s16_w500(color: Colors.white),
            ),
          ),
        ),
        dropdownSearchDecoration: CustomInputDecoration(
            hintColor: hintColor,
            labelTxt: label,
            hint: hint,
          customFillColor: fillColor,
            enableColor: enableColor,
            borderRadius: radius,
            lang: lang,
            prefIcon: prefixIcon,
            padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
        ),
      ),
    );
  }
}


