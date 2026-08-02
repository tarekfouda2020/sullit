import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';
import 'package:flutter_tdd/features/user/sale/domain/use_cases/get_all_flash_deal_products.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/sale_details/widgets/sale_details_w_imports.dart';

part 'sale_details.dart';
part 'sale_details_controller.dart';
