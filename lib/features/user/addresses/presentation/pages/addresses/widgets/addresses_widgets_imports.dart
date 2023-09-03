import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/addresses/data/enums/add_address_enum.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/addresses/addresses_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/shipping/widgets/shipping_widgets_imports.dart';

import 'package:flutter_tdd/core/constants/dimens.dart';

part 'build_new_address_item.dart';
part 'build_add_new_address.dart';
part 'build_add_new_address_card_shimmer.dart';
part 'build_address_loading.dart';
part 'build_list_address_shimmer.dart';
part 'build_addresses_empty_view.dart';
part 'build_addresses_view.dart';