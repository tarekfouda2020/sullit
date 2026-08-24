

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/cart/data/models/fess_mechanism_model/fess_mechanism_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/pay_type_enum.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/cart_check_out_saved_data.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/driver_tips_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/gift_card_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_delivery_instructions.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_order_fees.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_payment/widgets/cart_payment_widgets_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_summary_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_confirm_order_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/use_cases/confirm_pharmacy_order.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/models/restaurant_order_step_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/use_cases/get_pharmacy_confirm_summary.dart';
import 'package:flutter_tdd/features/user/restaurants/presentation/pages/widgets/restaurant_order_stepper.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/bezaat_points_summary_widget.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/use_cases/get_cart_summary.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/use_case/get_loyalty_points_balance.dart';
import 'package:flutter_tdd/features/user/restaurants/presentation/pages/restaurant_check_out/widgets/restaurant_check_out_widgets_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_payment_options.dart';

import '../../../domain/params/restaurant_create_order_params.dart';
import '../../../domain/use_cases/create_restaurant_order.dart';



part 'restaurant_check_out.dart';
part 'restaurant_check_out_controller.dart';