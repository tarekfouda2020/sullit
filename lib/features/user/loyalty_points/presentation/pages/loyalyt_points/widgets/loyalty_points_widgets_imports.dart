
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/enum/loyalty_point_type_enum.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/transactions_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/presentation/pages/loyalyt_points/loyalty_points_imports.dart';
import 'package:flutter_tdd/res.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';


part 'loyalty_points_info_widget.dart';
part 'loyalty_transactions_item_widget.dart';
part 'loyalty_points_info_loading_widget.dart';