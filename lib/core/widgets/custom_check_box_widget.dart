import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/widgets/check_box_widget.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  final GenericBloc<bool> changeValueCubit;
  final void Function(bool? value)? onChange;
  const CustomCheckBoxWidget(
      {super.key, required this.changeValueCubit, this.onChange});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: changeValueCubit,
      builder: (context, state) {
        return CheckBoxWidget(
          value: state.data,
          onChange: onChange ??
              (bool? value) => changeValueCubit.onUpdateData(value!),
        );
      },
    );
  }
}
