library widgets;

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/custom_check_box_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_safe_are.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_address/pharmacy_address_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'pharmacy_address_item_widget.dart';
part 'pharmacy_address_list_widget.dart';
part 'pharmacy_address_buttons_widget.dart';
part 'pharmacy_attach_prescription_widget.dart';
part 'pharmacy_shipping_dialog.dart';
part 'select_insurance_company_widget.dart';
