// ignore_for_file: use_build_context_synchronously

part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    updateLang(context);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var strUser = prefs.get("user");
    if (strUser != null) {
      context.read<DeviceCubit>().updateUserAuth(true);
      UserDomainModel user = UserDomainModel.fromJson(json.decode("$strUser"));
      GlobalState.instance.set("token", user.token);
      context.read<UserCubit>().onUpdateUserData(user);
      AutoRouter.of(context).push(HomeRoute(index: 0));
    } else {
      context.read<DeviceCubit>().updateUserAuth(false);
      AutoRouter.of(context).push(HomeRoute(index: 0));
    }
  }

  Future<void> updateLang(BuildContext context) async {
    await SharedPreferences.getInstance().then(
      (lang) {
        String? value = lang.getString("lang");
        GlobalState.instance.set("lang", value ?? "en");
        context.read<DeviceCubit>().updateLanguage(
              Locale(
                value ?? "en",
                value == "en" ? 'EG' : 'US',
              ),
            );
      },
    );
  }
}
