import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/theme/themes/app_dark_theme.dart';
import 'package:flutter_tdd/core/theme/themes/app_light_theme.dart';
import 'package:flutter_tdd/core/widgets/network_builder_view.dart';

import 'core/helpers/firebase_analytics_helper.dart';
import 'core/helpers/general_providers.dart';
import 'core/localization/set_localization.dart';
import 'core/routes/router_imports.gr.dart';

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(getIt<GlobalContext>().navigationKey);

  @override
  void initState() {
    getIt<FirebaseAnalyticsHelper>()
        .analytics
        .setConsent(adStorageConsentGranted: false, analyticsStorageConsentGranted: true);
    getIt.get<LoadingHelper>().initConfig();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
              light: AppLightTheme().theme,
              dark: AppDarkTheme().theme,
              initial: state.model.themeMode,
              builder: (theme, darkTheme) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: "Sullit",
                  darkTheme: darkTheme,
                  theme: theme,
                  supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG'),Locale('bn', 'BD')],
                  localizationsDelegates: const [
                    SetLocalization.localizationsDelegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  locale: state.model.locale,
                  routerDelegate: _appRouter.delegate(
                      initialRoutes: [const SplashRoute()],
                      navigatorObservers: () {
                        return [
                          FirebaseAnalyticsObserver(
                              analytics: getIt<FirebaseAnalyticsHelper>().analytics)
                        ];
                      }),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  builder: EasyLoading.init(builder: (ctx, child) {
                    ScreenUtil.init(ctx);
                    return NetworkBuilderView(child: child!);
                  }),
                );
              });
        },
      ),
    );
  }
}
