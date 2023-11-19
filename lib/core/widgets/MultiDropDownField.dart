import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import 'multi_drop_down/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'multi_drop_down/chip_display/multi_select_chip_display.dart';
import 'multi_drop_down/util/multi_select_list_type.dart';

class MultiDropDownField<T> extends StatefulWidget {
  final List<T>? data;
  final List<T> selectedItems;
  final String title;
  final String label;
  final Color? fillColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;
  final Color? buttonsColor;
  final Color? chipColor;
  final Color? textColor;
  final Color? itemsTextColor;
  final Color? titleColor;
  final Function(List<T>?) onConfirm;
  final Function(T) onItemClick;
  final Future<List<T>> Function()? onFind;
  final GlobalKey<FormFieldState>? dropkey;
  final EdgeInsets? margin;

  const MultiDropDownField({
    super.key,
    this.data,
    required this.selectedItems,
    required this.title,
    required this.label,
    this.fillColor,
    this.borderColor,
    required this.onConfirm,
    required this.onItemClick,
    this.onFind,
    this.dropkey,
    this.textColor,
    this.buttonsColor,
    this.selectedTextColor,
    this.unSelectedTextColor,
    this.selectedColor,
    this.chipColor,
    this.backgroundColor,
    this.unselectedColor,
    this.titleColor,
    this.itemsTextColor,
    this.margin,
  });

  @override
  _MultiDropDownField2State<T> createState() => _MultiDropDownField2State<T>();
}

class _MultiDropDownField2State<T> extends State<MultiDropDownField<T>> {
  @override
  Widget build(BuildContext context) {
    var lang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      margin:
          widget.margin ?? const EdgeInsets.symmetric(vertical: Dimens.dp10),
      child: MultiSelectBottomSheetField<T>(
        initialChildSize: 0.5,
        key: widget.dropkey,
        listType: MultiSelectListType.CHIP,
        backgroundColor: widget.backgroundColor ?? Colors.white,
        searchable: true,
        searchHint: lang == "ar" ? "بحث" : "Search",
        selectedColor: widget.selectedColor ?? context.colors.primary,
        unselectedColor: widget.unselectedColor ?? Colors.grey[200],
        selectedTextColor: widget.selectedTextColor ?? Colors.white,
        unSelectedTextColor: widget.unSelectedTextColor ?? Colors.black,
        itemsTextStyle: AppTextStyle.s14_w400(
            color: widget.itemsTextColor ?? Colors.white70),
        buttonText: Text(
          widget.label,
          style: AppTextStyle.s14_w500(
            color: widget.textColor ?? Colors.black45,
          ),
        ),
        title: Text(
          widget.title,
          style:
              AppTextStyle.s14_w800(color: widget.titleColor ?? Colors.black45),
        ),
        decoration: BoxDecoration(
          color: widget.fillColor ?? Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: widget.borderColor ?? Colors.grey.withOpacity(.5),
            width: 1.5,
          ),
        ),
        items: widget.data ?? [],
        onFind: widget.onFind,
        onConfirm: widget.onConfirm,
        initialValue: widget.selectedItems,
        buttonIcon: Icon(
          Icons.arrow_drop_down,
          size: 25,
          color: widget.textColor ?? Colors.black45,
        ),
        confirmText: Text(
          lang == "ar" ? "تاكيد" : "Confirm",
          style: AppTextStyle.s14_w500(
              color: widget.buttonsColor ?? context.colors.primary),
        ),
        cancelText: Text(
          lang == "ar" ? "الغاء" : "Cancel",
          style: AppTextStyle.s14_w500(
              color: widget.buttonsColor ?? context.colors.primary),
        ),
        chipDisplay: MultiSelectChipDisplay(
          alignment: lang == "ar" ? Alignment.topRight : Alignment.topLeft,
          chipColor: widget.chipColor,
          textStyle: AppTextStyle.s14_w400(
              color: widget.selectedTextColor ?? Colors.white),
          onTap: widget.onItemClick,
        ),
        validator: (values) {
          if (values == null || values.isEmpty) {
            return lang == "ar"
                ? "اختر عنصر واحد علي الاقل"
                : "select at least one";
          }
          return null;
        },
      ),
    );
  }
}
