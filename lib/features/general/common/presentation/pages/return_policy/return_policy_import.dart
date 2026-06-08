import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_html_widget.dart';
import 'package:flutter_tdd/core/helpers/helper_methods.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_logo.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/get_return_policy.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/privacy/privacy_controller.dart';

part 'return_policy.dart';
part 'return_policy_controller.dart';
