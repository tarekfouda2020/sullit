library pharmacy_categories_widgets;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_details/widgets/widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/res.dart';
import '../pharmacy_categories_imports.dart';

part 'pharmacy_categories_app_bar.dart';
part 'pharmacy_category_card_widget.dart';
