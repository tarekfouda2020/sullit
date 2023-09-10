import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_resend_password_code.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_reset_password.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_auth_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_logo.dart';

import '../../widgets/build_header_title.dart';
import 'widgets/reset_password_widgets_imports.dart';

part 'reset_password.dart';
part 'reset_password_controller.dart';