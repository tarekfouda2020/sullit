import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/custom_dropDown/CustomDropDown.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/condition.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_brand.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_cat.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_cus_products_brands.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_cus_products_cats.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_video_providers.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/set_add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/pages/add_classified_product/widgets/add_classified_product_w_imports.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_images_dialog.dart';

import '../../../../../../core/helpers/di.dart';

part 'add_classified_product.dart';
part 'add_classified_product_controller.dart';