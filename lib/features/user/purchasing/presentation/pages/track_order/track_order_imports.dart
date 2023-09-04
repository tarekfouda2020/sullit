import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_track_order.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/track_order/widgets/track_order_widgets_imports.dart';


part 'track_order.dart';
part 'track_order_controller.dart';