import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';

extension  AuthExtension on BuildContext {

  bool get isAuth => read<DeviceCubit>().state.model.auth;

}