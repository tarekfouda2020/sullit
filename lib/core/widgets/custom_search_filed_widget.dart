import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/res.dart';

class CustomSearchFiledWidget extends StatefulWidget {
  final TextEditingController txtController;
  final void Function() onPressSearch;
  final void Function() onPressClear;
  final void Function(String value) onChange;
  final double height;
  final String? hint;
  const CustomSearchFiledWidget({
    super.key,
    required this.txtController,
    required this.onPressSearch,
    required this.onChange,
    required this.onPressClear,
    this.height = Dimens.dp35,
    this.hint,
  });

  @override
  State<CustomSearchFiledWidget> createState() =>
      _CustomSearchFiledWidgetState();
}

class _CustomSearchFiledWidgetState extends State<CustomSearchFiledWidget> {
  final GenericBloc<bool> showClearIconCubit = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: widget.height,
            child: GenericTextField(
              fieldTypes: FieldTypes.normal,
              controller: widget.txtController,
              hint: widget.hint ?? tr("search_in_brands"),
              type: TextInputType.text,
              fillColor: context.colors.white,
              action: TextInputAction.search,
              contentPadding: const EdgeInsetsDirectional.only(start: 15),
              validate: (value) => value?.noValidate(),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: widget.onPressSearch,
                      child: SvgPicture.asset(
                        Res.searchIcon,
                        colorFilter: ColorFilter.mode(
                            context.colors.textColor, BlendMode.srcIn),
                      ),
                    ),
                    Gaps.hGap10,
                  ],
                ),
              ),
              onSubmit: widget.onPressSearch,
              onChange: (value) => _onChange(value),
            ),
          ),
        ),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: showClearIconCubit,
          builder: (context, state) {
            return Visibility(
              visible: state.data,
              child: GestureDetector(
                onTap: () => _onTap(),
                child: Container(
                  width: 23,
                  height: 23,
                  margin: Dimens.paddingHorizontal10PX,
                  decoration: BoxDecoration(
                      color: context.colors.disableGray,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.clear,
                    size: 16,
                    color: context.colors.gray8,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }

  void _onTap() {
    showClearIconCubit.onUpdateData(false);
    widget.txtController.clear();
    widget.onPressClear.call();
  }

  void _onChange(String value) {
    widget.onChange.call(value);
    showClearIconCubit.onUpdateData(value.isNotEmpty);
  }
}
