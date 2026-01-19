import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/models/location_iq_place_model/location_iq_place.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/multi_drop_down/bottom_sheet/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/res.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../LocationAddressImports.dart';
import '../location_cubit/location_cubit.dart';

part 'BuildGoogleMapView.dart';
part 'BuildSaveButton.dart';
part 'places_list_widget.dart';
part 'places_shimmer_widget.dart';
part 'suggestions_places_sheet.dart';
part 'suggestions_search_field_widget.dart';
part 'map_search_field_widget.dart';