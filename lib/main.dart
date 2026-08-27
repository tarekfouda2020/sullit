import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/core/helpers/play_sound_helper.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'core/helpers/di.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await Firebase.initializeApp();
  await HiveHelper.instance.init();
  await HiveHelper.instance.openBox<String>(HiveBoxesNames.instoreCart);
  PlaySoundHelper.instance.initSound();

  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);

  await configureDependencies();
  getIt.registerSingleton(ComparedProductsDb());
  await getIt<GlobalNotification>().setupNotification();
  await FacebookEventsHelper.instance.setFacebookTracking();

  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child: Phoenix(child: const MyApp()),
    ),
  );
}
