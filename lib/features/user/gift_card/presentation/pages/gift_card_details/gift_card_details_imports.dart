


import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_header_logo.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_gift_card_subscribe_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/use_case/get_card_subscription_details.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/use_case/get_gift_card_details.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/use_case/get_pay_methods.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/use_case/pay_gift_card_subscribe.dart';
import 'package:flutter_tdd/features/user/wallet/domain/use_cases/get_my_wallet.dart';

import 'widgets/gift_card_details_widgets_imports.dart';

part 'gift_card_details.dart';
part 'gift_card_details_controller.dart';