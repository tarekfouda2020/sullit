

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/widgets/invoice_summary_card_widget.dart';
import 'package:flutter_tdd/core/widgets/review_product_sheet.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_combinedOrder.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_payment/widgets/cart_payment_widgets_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/build_cart_stepper.dart';

import 'widgets/cart_confirm_buying_widgets_imports.dart';

part 'cart_confirm_buying.dart';
part 'cart_confirm_buying_controller.dart';