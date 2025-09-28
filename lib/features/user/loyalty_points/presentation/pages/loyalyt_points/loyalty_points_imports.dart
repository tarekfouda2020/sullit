
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/enum/loyalty_point_type_enum.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/use_case/get_loyalty_points_balance.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/use_case/get_transactions.dart';
import 'package:flutter_tdd/features/user/loyalty_points/presentation/pages/loyalyt_points/widgets/loyalty_points_widgets_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../core/widgets/build_shimmer_item.dart';

part 'loyalty_points.dart';
part 'loyalty_points_controller.dart';