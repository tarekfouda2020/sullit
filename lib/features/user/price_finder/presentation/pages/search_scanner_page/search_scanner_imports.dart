import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/helpers/custom_toast.dart';
import '../../../../../../core/helpers/di.dart';
import '../../../../../../core/helpers/loading_helper.dart';
import '../../../../../../core/localization/localization_methods.dart';
import '../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../core/widgets/default_app_bar.dart';
import '../../../../../../core/widgets/scanner_item_widget.dart';
import '../../../../../../res.dart';
import '../../../../instore_cart/presentation/pages/instore_cart_page/instore_cart_page_imports.dart';
import '../../../../instore_cart/presentation/pages/scanner_page/widgets/imports.dart';
import '../../../../products/domain/models/product.dart';
import '../../../../products/domain/models/product_details_domain_model.dart';
import '../../../../products/domain/models/variant.dart';
import '../../../../products/domain/use_cases/get_sku_product.dart';

part 'search_scanner_controller.dart';

part 'search_scanner_page.dart';
