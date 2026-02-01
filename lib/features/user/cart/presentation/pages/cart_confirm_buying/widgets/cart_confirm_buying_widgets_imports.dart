

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/core/widgets/invoice_summary_card_widget.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_confirm_buying/cart_confirm_buying_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart_payment/widgets/cart_payment_widgets_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/build_cart_stepper_shimmer.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_details/widgets/order_details_widgets_imports.dart';
import 'package:flutter_tdd/res.dart';

part 'order_details_widget.dart';
part 'cart_order_info_widget.dart';
part 'cart_order_products_widget.dart';
part 'confirm_buying_summary_widget.dart';
part 'cart_confirm_buying_products_widget.dart';
part 'cart_confirm_shimmer_widget.dart';
part 'new_points_balance_widget.dart';

