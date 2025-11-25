import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;


import 'core/helpers/di.dart';
import 'core/http/dio_helper/utils/http_tracking_interceptor.dart';
import 'my_app.dart';


void main()async{
  tz.initializeTimeZones();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  getIt.registerSingleton(SharedPreferences.getInstance());
  await configureDependencies();
  getIt.registerSingleton(ComparedProductsDb());
  getIt<GlobalNotification>().setupNotification();
  HttpTrackingInterceptor.instance.init();
  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child:  Phoenix(child: const MyApp()),
    ),
  );
}

