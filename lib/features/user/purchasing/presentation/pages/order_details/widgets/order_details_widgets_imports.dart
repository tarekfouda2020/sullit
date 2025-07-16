import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_details/order_details_imports.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/routes/router_imports.gr.dart';

part 'order_info_widget.dart';
part 'order_details_sections_title_widget.dart';
part 'order_details_product_item_widget.dart';
part'order_details_summary_widget.dart';
part 'order_summary_item_widget.dart';
part 'returned_order_details_widget.dart';
part 'order_info_item_widget.dart';
part 'order_details_widget.dart';
part 'order_details_products_widget.dart';