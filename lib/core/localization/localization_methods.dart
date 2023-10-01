import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'set_localization.dart';


String tr(String key,{BuildContext? context}) {
  return SetLocalization.of(context ?? getIt<GlobalContext>().context())!.getTranslateValue(key);
}
