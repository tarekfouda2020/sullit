import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/file_helper.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_image.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_digital_products.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/downloads/widgets/downloads_widgets_imports.dart';

part 'downloads.dart';
part 'downloads_controller.dart';
