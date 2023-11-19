import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_home_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_categories.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/categories/widgets/categories_widgets_imports.dart';

part 'categories.dart';
part 'categories_controller.dart';