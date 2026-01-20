

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_search_filed_widget.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/widgets/seller_card_widget.dart';
import 'package:flutter_tdd/features/user/best_sellers/presention/pages/best_sellers_page/best_sellers_page_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/res.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'seller_search_filed_widget.dart';
part 'sellers_list_widget.dart';
part 'best_sellers_shimmer.dart';