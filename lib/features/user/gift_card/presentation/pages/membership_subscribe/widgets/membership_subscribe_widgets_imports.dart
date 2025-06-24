

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/multi_drop_down/bottom_sheet/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/features/seller/files/presentation/pages/seller_uploaded_file/widgets/seller_uploaded_file_widgets_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/enum/membership_type_enum.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/membership_model.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/membership_subscribe/membership_subscribe_imports.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/widgets/membership_item_widget.dart';
import 'package:flutter_tdd/res.dart';

part 'get_plans_widget.dart';
part 'get_plans_button_widget.dart';
part 'about_gift_card_widget.dart';
part 'vip_plans_bottom_sheet_widget.dart';
part 'pay_gif_card_button_widget.dart';
part 'agree_terms_conditions_widget.dart';