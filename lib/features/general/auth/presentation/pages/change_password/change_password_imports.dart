

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/change_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/use_cases/set_change_password.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/change_password/widgets/change_password_widgets_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_title.dart';


part 'change_password.dart';
part 'change_password_controller.dart';