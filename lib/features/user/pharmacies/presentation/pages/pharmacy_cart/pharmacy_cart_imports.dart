

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_cart/widgets/widgets_imports.dart';

import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';

part 'pharmacy_cart.dart';
part 'pharmacy_cart_controller.dart';