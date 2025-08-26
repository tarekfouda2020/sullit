import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_sections.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_home.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_product_sections.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_sku_product.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/widgets/home_main_widgets_imports.dart';
import 'package:flutter_tdd/features/user/sale/domain/entities/timer_entity.dart';

import '../../../../../../core/widgets/my_scaffold.dart';

part 'home_main.dart';
part 'home_main_controller.dart';