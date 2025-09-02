import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/country_picker_helper.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/contact_us.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/get_contact_us.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/get_contact_us_socials.dart';

import 'widgets/contact_us_widgets_imports.dart';

part 'contact_us.dart';
part 'contact_us_controller.dart';