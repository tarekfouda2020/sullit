import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/core/helpers/location_service.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/price_finder/presentation/pages/price_comparison_page/widgets/widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/helpers/di.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../core/widgets/default_app_bar.dart';
import '../../../domain/models/price_finder_result.dart';
import '../../../domain/use_cases/price_search_result.dart';

part 'price_comparison_controller.dart';

part 'price_comparison_page.dart';
