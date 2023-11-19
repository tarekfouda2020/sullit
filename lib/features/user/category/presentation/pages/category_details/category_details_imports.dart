import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/price_range_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_category_products.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_sub_categories.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'widgets/category_details_widgets_imports.dart';

part 'category_details.dart';
part 'category_details_controller.dart';
