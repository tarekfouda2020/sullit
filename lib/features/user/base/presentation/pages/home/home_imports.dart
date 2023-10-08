import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/widgets/home_widgets_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/more/more_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_drawer.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/categories/categories_imports.dart';
import 'package:flutter_tdd/features/user/notifications/presentation/pages/notifications/notifications_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/home_main_imports.dart';

part 'home.dart';

part 'home_controller.dart';
