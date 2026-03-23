

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';
import 'package:flutter_tdd/core/widgets/multi_drop_down/bottom_sheet/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_cards/gift_cards_imports.dart';
import 'package:flutter_tdd/res.dart';
import 'package:screenshot/screenshot.dart';

import '../gift_card_details_imports.dart';

part 'card_details_widget.dart';
part 'gift_card_info_widget.dart';
part 'gift_card_barcode_widget.dart';
part 'gift_card_coupon_widget.dart';
part 'gift_card_footer_section_widget.dart';
part 'card_available_price_widget.dart';
part 'pay_method_bottom_sheet_widget.dart';
part 'pay_method_item_widget.dart';
part 'pay_method_shimmer_widget.dart';
part 'gift_card_details_shimmer_widget.dart';