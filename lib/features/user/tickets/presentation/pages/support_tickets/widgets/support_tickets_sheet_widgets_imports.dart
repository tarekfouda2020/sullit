import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/multi_drop_down/bottom_sheet/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_input_label.dart';
import 'package:flutter_tdd/features/user/dashboard/presentation/manager/routes/routes.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:intl/intl.dart';

import '../support_tickets_imports.dart';

part 'build_add_ticket_btn.dart';
part 'build_add_ticket_images.dart';
part 'build_header_text.dart';
part 'build_support_tickets_loading.dart';
part 'build_ticket_dialog.dart';
part 'build_ticket_info.dart';
part 'build_ticket_item.dart';
part 'support_ticket_bottom_sheet_widget.dart';