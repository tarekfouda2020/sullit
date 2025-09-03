import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/helper_methods.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/package/country_calling_code_picker-2.0.1/lib/country.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/phone_filed_prefix_widget.dart';
import 'package:flutter_tdd/features/general/auth/presentation/widgets/build_input_label.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:flutter_tdd/res.dart';
import 'package:url_launcher/url_launcher.dart';

import '../contact_us_imports.dart';

part 'build_contact_us_button.dart';
part 'build_social.dart';
part 'contact_us_social_item_widget.dart';
part 'contact_us_form_widget.dart';