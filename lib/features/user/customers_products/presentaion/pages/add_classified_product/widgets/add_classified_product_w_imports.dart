import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/customers_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/customers_products/presentaion/pages/add_classified_product/add_classified_product_imports.dart';

part 'build_general_fields.dart';
part 'build_gallary_images.dart';
part 'build_videos_view.dart';
part 'build_meta_page.dart';
part 'build_discription.dart';
part 'build_price.dart';
part 'build_pdf.dart';
part 'build_custom_get_image.dart';