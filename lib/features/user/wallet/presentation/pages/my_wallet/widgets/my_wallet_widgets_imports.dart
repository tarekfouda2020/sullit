import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_history.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';
import 'package:flutter_tdd/features/user/wallet/presentation/pages/my_wallet/my_wallet_imports.dart';

part 'build_charge_wallet.dart';
part 'build_wallet_details.dart';
part 'build_wallet_history.dart';
part 'build_charge_wallet_dialog.dart';
part 'build_wallet_loading.dart';
