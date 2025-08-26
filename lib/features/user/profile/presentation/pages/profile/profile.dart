// ignore_for_file: library_private_types_in_public_api
part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>with WidgetsBindingObserver  {
  late ProfileController controller;

  @override
  void initState() {
    controller = ProfileController(context);
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      controller.onSaveUserData(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar:  DefaultAppBar(title: tr('manageProfile')),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              padding:const EdgeInsets.only(right: 15, left: 15, bottom: 15),
              children: [
                BuildProfileImage(controller: controller),
                BuildProfileFormFields(controller: controller),
                BuildProfileButton(controller: controller),
                const ChangePasswordWidget()
              ],
            ),
          ),
          LogoutButtonWidget(controller: controller),
          BuildDeleteAccountButton(controller: controller),
        ],
      ),
    );
  }
}
