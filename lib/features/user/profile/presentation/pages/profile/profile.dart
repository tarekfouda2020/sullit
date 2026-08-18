// ignore_for_file: library_private_types_in_public_api
part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with WidgetsBindingObserver {
  late ProfileController controller;

  @override
  void initState() {
    controller = ProfileController(context);
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // if (state == AppLifecycleState.resumed) {
    //   controller.onSaveUserData(context);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        String? email = state.model?.email;
        return PopScope(
          canPop: email != null && email.isNotEmpty,
          onPopInvokedWithResult: (didPop, result) =>
              controller.onPressBack(context, email),
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              backgroundColor: context.colors.customBackground,
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: context.isShareHolder,
              appBar: ProfileAppBarWidget(
                controller: controller,
                email: email ?? "",
                isShareHolder: context.isShareHolder,
              ),
              body: context.isShareHolder
                  ? ShareHolderView(controller: controller)
                  : SingleChildScrollView(
                      padding: const EdgeInsets.only(
                          right: 15, left: 15, bottom: 15),
                      child: Column(
                        children: [
                          BuildProfileImage(controller: controller),
                          BuildProfileFormFields(controller: controller),
                          BuildProfileButton(controller: controller),
                          ChangePasswordWidget(controller: controller),
                        ],
                      ),
                    ),
              bottomNavigationBar:
                  ManageProfileBottomNavWidget(controller: controller),
            ),
          ),
        );
      },
    );
  }
}
