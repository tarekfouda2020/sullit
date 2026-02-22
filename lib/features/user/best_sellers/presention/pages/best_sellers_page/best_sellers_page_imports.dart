import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/use_cases/get_best_sellers.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'widgets/widgets_imports.dart';

part 'best_sellers_page.dart';
part 'best_sellers_page_controller.dart';