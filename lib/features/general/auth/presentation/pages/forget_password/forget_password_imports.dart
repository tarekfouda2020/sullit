import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_forget_password.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_auth_app_bar.dart';

import '../../widgets/build_header_title.dart';
import 'widgets/forget_password_widgets_imports.dart';

part 'forget_password.dart';
part 'forget_password_controller.dart';