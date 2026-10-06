import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';

extension LanguageExtension on BuildContext {

  bool get isArabic => read<DeviceCubit>().state.model.locale.languageCode == LangCodeHelper.langAR;

}
