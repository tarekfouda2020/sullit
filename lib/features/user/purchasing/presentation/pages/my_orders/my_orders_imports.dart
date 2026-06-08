import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_image.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/cancel_order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_purchasing_history.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/order_again.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/pay_order.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/widgets/purchasing_widgets_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../order_details/widgets/order_details_widgets_imports.dart';
import 'widgets/purchased_orders_widgets_imports.dart';

part 'my_orders.dart';
part 'my_orders_controller.dart';
