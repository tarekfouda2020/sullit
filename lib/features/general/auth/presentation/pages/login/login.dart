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
      onWillPop: () => loginController.onBackPressed(context),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        body: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: loginController.tabsCubit,
            builder: (context, state) {
              return SingleChildScrollView(
                padding: Dimens.paddingHorizontal20PX,
                child: Column(
                  children: [
                    const BuildHeaderLogo(),
                    BuildHeaderTitle(
                      title: state.data == 0 ? tr('login') : tr('register'),
                      subTitle: state.data == 1
                          ? tr("registerHint")
                          : tr("loginHint"),
                    ),
                    BuildLoginTabsView(
                      controller: loginController,
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _body(state),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _body(GenericState<int> state) {
    return state.data == 0
        ? BuildLoginView(controller: loginController)
        : const Register();
  }
}
