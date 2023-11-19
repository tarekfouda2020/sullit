import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/notifications/domain/models/notification.dart';
import 'package:flutter_tdd/features/user/notifications/domain/use_cases/get_notifications.dart';
import 'package:flutter_tdd/features/user/notifications/presentation/pages/notifications/widgets/notifications_widgets_imports.dart';

part 'notifications.dart';
part 'notifications_controller.dart';