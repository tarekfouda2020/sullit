library pharmacy_details;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_details/widgets/widgets_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'pharmacy_details.dart';
part 'pharmacy_details_controller.dart';
