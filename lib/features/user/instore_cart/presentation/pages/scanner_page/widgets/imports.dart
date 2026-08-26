import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/instore_cart/presentation/pages/scanner_page/widgets/imports.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../../core/constants/gaps.dart';
import '../../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../../core/widgets/dirham_price_widget.dart';
import '../scanner_page_imports.dart';

part 'product_details_sheet.dart';

part 'store_header_widget.dart';

part 'scanner_widget.dart';

part 'total_items_bottom.dart';

part 'total_qnt_item_widget.dart';
part 'counter_item_widget.dart';