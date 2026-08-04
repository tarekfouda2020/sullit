import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/blog/domain/models/blog.dart';
import 'package:flutter_tdd/features/user/blog/domain/use_cases/get_blogs.dart';
import 'package:flutter_tdd/features/user/blog/presentation/pages/blogs/widgets/blogs_w_imports.dart';

part 'blogs.dart';
part 'blogs_controller.dart';
