import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_code_verify.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_resend_verify_code.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_verify_phone.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_auth_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_pin_field.dart';

import '../../../domain/entities/code_verify_params.dart';
import '../../widgets/build_header_title.dart';
import 'widgets/active_account_widgets_imports.dart';

part 'active_account.dart';
part 'active_account_controller.dart';
