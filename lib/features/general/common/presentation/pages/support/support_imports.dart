import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/support_msg_params.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/get_support_messages.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/send_support_messages.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/support/widgets/support_w_imports.dart';
part 'support.dart';
part 'support_controller.dart';