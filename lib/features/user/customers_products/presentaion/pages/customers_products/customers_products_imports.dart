import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/product_specifications.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/sort_types.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/use_cases/get_customer_products.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/use_cases/get_product_specifications.dart';
import 'package:flutter_tdd/features/user/customers_products/presentaion/pages/customers_products/widgets/customers_products_w_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'customers_products.dart';
part 'customers_products_controller.dart';