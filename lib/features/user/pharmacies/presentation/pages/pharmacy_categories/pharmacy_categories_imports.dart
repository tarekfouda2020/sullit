library pharmacy_categories;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/use_cases/get_shop_categories.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/use_cases/get_shop_details.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_categories/widgets/widgets_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_details/widgets/widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'pharmacy_categories.dart';
part 'pharmacy_categories_controller.dart';
