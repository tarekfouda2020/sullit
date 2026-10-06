import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../../core/constants/gaps.dart';
import '../../../../../../../core/localization/localization_methods.dart';
import '../../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../../core/widgets/build_shimmer_item.dart';
import '../../../../../../../core/widgets/dirham_price_widget.dart';
import '../../../../../../../res.dart';
import '../../../../../products/domain/models/product_card.dart';
import '../search_imports.dart';

part 'search_header_widget.dart';

part 'search_result_item_widget.dart';

part 'app_bar_location_widget.dart';
part 'search_result_shimmer_widget.dart';
