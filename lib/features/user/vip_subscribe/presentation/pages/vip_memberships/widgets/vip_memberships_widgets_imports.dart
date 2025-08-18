

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/pages/vip_memberships/vip_memberships_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/widgets/membership_item_widget.dart';

part 'renew_plan_button_widget.dart';
part 'change_plan_button_widget.dart';
part 'current_subscription_section_widget.dart';
part 'see_memberships_button_widget.dart';
part 'vip_memberships_shimmer_widget.dart';