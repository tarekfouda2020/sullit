import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_custom_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:flutter_tdd/features/user/search/domain/models/search_results.dart';
import 'package:flutter_tdd/features/user/search/domain/use_cases/get_search_results.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/search_widgets_imports.dart';

part 'search.dart';
part 'search_controller.dart';