

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/enum/membership_type_enum.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/membership_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/presentation/pages/gift_card_details/widgets/gift_card_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/use_case/get_current_subscription.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/use_case/get_pay_methods.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/use_case/pay_vip_subscription.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/pages/vip_memberships/widgets/vip_memberships_widgets_imports.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/presentation/widgets/membership_item_widget.dart';
import 'package:flutter_tdd/features/user/wallet/domain/use_cases/get_my_wallet.dart';

part 'vip_memberships.dart';
part 'vip_memberships_controller.dart';