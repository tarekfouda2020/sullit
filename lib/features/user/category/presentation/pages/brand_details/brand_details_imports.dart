import 'package:flutter/material.dart';

import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_brand_products.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_loading_products_grid_view.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_tdd/core/widgets/grid_view_pagination.dart';

part 'brand_details.dart';
part 'brand_details_controller.dart';
