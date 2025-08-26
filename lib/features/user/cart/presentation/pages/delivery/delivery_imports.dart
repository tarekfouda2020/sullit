

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/delivery_type_enum.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/pick_up.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/apply_coupon.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_shipping_info.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/set_cart_store_shipping.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/build_cart_stepper.dart';

import 'widgets/delivery_widgets_imports.dart';

part 'delivery.dart';
part 'delivery_controller.dart';