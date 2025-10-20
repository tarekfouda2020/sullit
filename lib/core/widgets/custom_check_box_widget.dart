import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  final GenericBloc<bool> changeValueCubit;
  const CustomCheckBoxWidget({super.key, required this.changeValueCubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: changeValueCubit,
      builder: (context, state) {
        return Checkbox(
          checkColor: context.colors.white,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: context.colors.primary,
          fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return context.colors.white;
            }
            if (states.contains(WidgetState.selected)) {
              return context.colors.primary;
            }
            return Colors.transparent;
          }),
          value: state.data,
          onChanged: (value) => changeValueCubit.onUpdateData(value!),
          side: BorderSide(
            color: context.colors.textColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: Dimens.borderRadius4PX,
          ),
        );
      },
    );
  }
}
