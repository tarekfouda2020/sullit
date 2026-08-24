import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/restaurants/presentation/pages/restaurants/widgets/import_widgets.dart';
import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/helpers/debounce_helper.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/widgets/build_empty_data_view.dart';
import '../../../../../../core/widgets/custom_refresh_indicator_widget.dart';
import '../../../../../../core/widgets/custom_search_filed_widget.dart';
import '../../../../../../core/widgets/default_app_bar.dart';
import '../../../../best_sellers/data/enums/shop_type_enum.dart';
import '../../../../best_sellers/domain/entity/shops_params.dart';
import '../../../../best_sellers/presention/pages/best_sellers_page/widgets/widgets_imports.dart';
import '../../../../category/domain/entities/generic_paginate_params.dart';
import '../../../../pharmacies/domain/use_cases/get_pharmacies.dart';
import '../../../../pharmacies/presentation/pages/pharmacies_list/widgets/widgets_imports.dart';
import '../../../../products/domain/models/shop_card_domain_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../search/domain/entities/search_result_params.dart';

part 'restaurants_controller.dart';

part 'restaurants.dart';
