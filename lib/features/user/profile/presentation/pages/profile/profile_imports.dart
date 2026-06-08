import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/core/package/country_calling_code_picker-2.0.1/lib/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/country_picker_helper.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';
import 'package:flutter_tdd/features/user/profile/domain/use_cases/get_profile.dart';
import 'package:flutter_tdd/features/user/profile/domain/use_cases/set_edit_profile.dart';
import 'package:flutter_tdd/features/user/profile/presentation/pages/profile/widgets/share_holder_view/widgets/share_holder_view_widgets_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/use_case/get_current_subscription.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/profile_widgets_imports.dart';

part 'profile.dart';
part 'profile_controller.dart';
