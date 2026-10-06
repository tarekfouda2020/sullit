import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/price_finder/presentation/pages/price_finder_page/widgets/imports.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/usecases/use_case.dart';
import '../../../../../../res.dart';
import '../../../domain/models/search_query.dart';
import '../../../domain/use_cases/popular_searches.dart';

part 'price_finder_controller.dart';
part 'price_finder_page.dart';