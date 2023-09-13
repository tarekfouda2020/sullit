// ignore_for_file: use_build_context_synchronously
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/base/domain/use_cases/log_out.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AuthHelper {
  Future<void> onLogOut(BuildContext context) async {
    return await SetLogout().call(NoParams()).then(
          (value) async {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.clear();
        pref.remove("user");
        context.read<DeviceCubit>().updateUserAuth(false);
        context.read<UserCubit>().onUpdateUserData(UserDomainModel());
        GlobalState.instance.set("token", null);
        CustomToast.showSimpleToast(
          msg: "Successfully Logged Out",
          type: ToastType.success,
        );
        AutoRouter.of(context).push(
           HomeRoute(index: 0),
        );
      },
    );
  }

}