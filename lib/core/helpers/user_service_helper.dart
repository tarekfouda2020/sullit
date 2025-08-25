import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class UserServiceHelper{

  Future<void> updateUserdata(BuildContext context,UserDomainModel data)async{
    context.read<DeviceCubit>().updateUserAuth(true);
    GlobalState.instance.set("token", data.token);
    context.read<UserCubit>().onUpdateUserData(data);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", json.encode(data.toJson()));
  }

}