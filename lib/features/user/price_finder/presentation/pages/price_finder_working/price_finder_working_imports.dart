import 'dart:convert';
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/pusher_hleper/pusher_cannels_name.dart';
import 'package:flutter_tdd/core/helpers/pusher_hleper/pusher_events_name.dart';
import 'package:flutter_tdd/core/helpers/pusher_hleper/pusher_service.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/presentation/pages/price_finder_working/widgets/imports.dart';
import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/widgets/default_app_bar.dart';

part 'price_finder_working_controller.dart';

part 'price_finder_working.dart';
