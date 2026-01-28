import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_home_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/widgets/home_main_widgets_imports.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/use_cases/get_coupons.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/best_rated/best_rated_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/coupons/widgets/coupons_widgets_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/new_arrival/new_arrival_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/on_sale/on_sale_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/shareholder_offers/shareholder_offers_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/pages/membership_subscribe/membership_subscribe_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../pro_offers/pro_offers_imports.dart';

part 'coupons.dart';
part 'coupons_controller.dart';
