import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_home_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/use_cases/get_coupons.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/coupons/widgets/coupons_widgets_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'coupons.dart';
part 'coupons_controller.dart';