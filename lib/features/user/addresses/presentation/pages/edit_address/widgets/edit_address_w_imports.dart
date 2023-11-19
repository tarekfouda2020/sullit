import 'package:country_calling_code_picker/picker.dart'as package;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/edit_address/edit_address_imports.dart';

part  'build_edit_address_form.dart';