import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../../core/constants/gaps.dart';
import '../../../../../../../core/localization/localization_methods.dart';
import '../../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../../core/widgets/build_shimmer_item.dart';
import '../../../../../../../res.dart';
import '../../../../domain/models/search_query.dart';
import '../price_finder_imports.dart';

part 'price_finder_header_widget.dart';

part 'price_finder_search_card_widget.dart';

part 'popular_searches_widget.dart';

part 'popular_searches_item_widget.dart';

part 'app_bar_location_widget.dart';

part 'scan_field_widget.dart';

part 'popular_searches_shimmer_widget.dart';
