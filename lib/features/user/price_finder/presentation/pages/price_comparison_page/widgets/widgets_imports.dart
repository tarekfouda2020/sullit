import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/location_service.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/user_current_location_description_widget.dart';
import 'package:flutter_tdd/features/user/price_finder/presentation/pages/price_comparison_page/price_comparison_imports.dart';

import '../../../../../../../core/constants/gaps.dart';
import '../../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../../core/widgets/build_shimmer_item.dart';
import '../../../../../../../core/widgets/dirham_price_widget.dart';
import '../../../../../../../res.dart';
import '../../../../domain/models/price_comparison_product_domain_model.dart';
import '../../../../domain/models/price_finder_deal_domain_model.dart';
import '../../../../domain/models/price_finder_result.dart';

part 'comparison_header_widget.dart';

part 'best_deal_card_widget.dart';

part 'suggestions_product_item_widget.dart';

part 'product_item_widget.dart';
part'price_comparison_shimmer_widget.dart';
