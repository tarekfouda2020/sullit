
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/custom_dropDown/CustomDropDown.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/purchase_package_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_package.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/payment_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_cus_packages.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_payment_methods.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/purchase_package.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/pages/customers_packages/widgets/customers_packages_w_imports.dart';

part 'customers_packages.dart';
part 'customers_packages_controller.dart';