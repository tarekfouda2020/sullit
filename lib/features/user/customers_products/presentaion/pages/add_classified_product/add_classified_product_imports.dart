import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/customers_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/customers_products/presentaion/pages/add_classified_product/widgets/add_classified_product_w_imports.dart';
import 'package:flutter_tdd/features/user/customers_products/presentaion/widgets/build_images_dialog.dart';

import '../../../../../../core/helpers/di.dart';

part 'add_classified_product.dart';
part 'add_classified_product_controller.dart';