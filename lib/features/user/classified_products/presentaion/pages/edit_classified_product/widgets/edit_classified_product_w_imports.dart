import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/edit_images_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/pages/edit_classified_product/edit_classified_product_imports.dart';

part 'build_edit_general_fields.dart';
part 'build_edit_images.dart';
part 'build_edit_thumbnail_image.dart';
part 'build_edit_meta_image.dart';
