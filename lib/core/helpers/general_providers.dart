import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/location_address/location_cubit/location_cubit.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';

class GeneralProviders {
  GeneralProviders._();

  static GeneralProviders instance = GeneralProviders._();

  List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider<DeviceCubit>(
          create: (BuildContext context) => DeviceCubit(),
        ),
        BlocProvider<UserCubit>(
          create: (BuildContext context) => UserCubit(),
        ),
        BlocProvider<LocationCubit>(
          create: (BuildContext context) => LocationCubit(),
        ),
        BlocProvider<CountCubit>(
            create: (BuildContext context) => CountCubit()),
      ];
}
