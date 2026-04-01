import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  AppColors get colors => AppColors.of(this);
  
  bool get isShareHolder => ((read<UserCubit>().state.model?.isShareHolder == true) && (read<UserCubit>().state.model?.hasValidSubscription == true) );

  bool get isVipUser => read<UserCubit>().state.model?.hasValidSubscription  == true;
}