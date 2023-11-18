part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: loginController.onBackPressed,
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: loginController.tabsCubit,
            builder: (context, state) {
              return SingleChildScrollView(
                padding: Dimens.paddingHorizontal23PX,
                child: Column(
                  children: [
                    const BuildHeaderLogo(),
                    BuildHeaderTitle(title: tr('login')),
                    BuildLoginTabsView(
                      controller: loginController,
                    ),
                    state.data == 0
                        ? BuildLoginView(controller: loginController)
                        : const Register(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
