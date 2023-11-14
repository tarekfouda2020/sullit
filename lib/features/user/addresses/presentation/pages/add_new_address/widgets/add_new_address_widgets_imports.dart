import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/core/models/drop_down_model/drop_down_model.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/add_new_address/add_new_address_imports.dart';

part 'build_add_address_form.dart';
