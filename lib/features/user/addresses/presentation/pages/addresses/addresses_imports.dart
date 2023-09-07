import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/addresses/data/enums/add_address_enum.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/use_cases/get_addresses.dart';
import 'package:flutter_tdd/features/user/addresses/domain/use_cases/set_delete_address.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/shipping/widgets/shipping_widgets_imports.dart';

import 'widgets/addresses_widgets_imports.dart';

part 'addresses.dart';

part 'addresses_controller.dart';
