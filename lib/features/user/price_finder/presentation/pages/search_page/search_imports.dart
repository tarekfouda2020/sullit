import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:flutter_tdd/features/user/price_finder/presentation/pages/search_page/widgets/imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/helpers/debounce_helper.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/models/domain_models/brand_domain_model.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../core/widgets/build_empty_data_view.dart';
import '../../../../../../core/widgets/default_app_bar.dart';
import '../../../../../../res.dart';
import '../../../../category/domain/entities/price_range_params.dart';
import '../../../../category/domain/entities/search_products_params.dart';
import '../../../../category/domain/models/sub_category.dart';
import '../../../../category/domain/use_cases/get_category_products.dart';
import '../../../../products/domain/models/product_card.dart';
import '../../../../products/domain/models/shop_card_domain_model.dart';

part 'search_controller.dart';
part 'search_page.dart';