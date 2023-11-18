import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_user_register.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/login/widgets/login_widgets_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_auth_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_logo.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_title.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/build_register_widgets_imports.dart';

part 'register.dart';
part 'register_controller.dart';