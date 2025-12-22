// ignore_for_file: use_build_context_synchronously

part of 'splash_imports.dart';

class SplashController {
  Future<void> manipulateSaveData(BuildContext context) async {
     updateLang(context);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var strUser = prefs.get("user");
    if (strUser != null) {
      context.read<DeviceCubit>().updateUserAuth(true);
      UserDomainModel user = UserDomainModel.fromJson(json.decode("$strUser"));
      GlobalState.instance.set("token", user.token);
      context.read<UserCubit>().onUpdateUserData(user);
      await Future.delayed(const Duration(seconds: 1));
      AutoRouter.of(context).push(HomeRoute(index: 0));
    } else {
      context.read<DeviceCubit>().updateUserAuth(false);
      await Future.delayed(const Duration(seconds: 1));
      AutoRouter.of(context).push(HomeRoute(index: 0));
    }
  }


  /// stored lang in sharedPref & DeviceCubit is use for local translates
  /// while stored lang in global state is use for back-end
  /// back-end lang code is different from local lang code

  Future<void> updateLang(BuildContext context) async {
    await SharedPreferences.getInstance().then(
          (lang) {
        String? value = lang.getString(LangCodeHelper.langKey);
        context.read<DeviceCubit>().updateLanguage(
          Locale(
            value ?? LangCodeHelper.langEN,
            getCountryLangCode(value ?? LangCodeHelper.langEN),
          ),
        );
        if(value == LangCodeHelper.langAR){
          value = LangTypeEnum.arabic.getLangCode();
        }
        if(value == LangCodeHelper.langBN){
          value = LangTypeEnum.bangladesh.getLangCode();
        }
        GlobalState.instance.set(LangCodeHelper.langKey, value ?? LangCodeHelper.langEN);

      },
    );
  }



  String getCountryLangCode(String code){
    switch(code){
      case LangCodeHelper.langAR: return "SA";
      case LangCodeHelper.langEN: return "US";
      case LangCodeHelper.langBN:return "BD" ;
      default: return "US";
    }
  }




}
