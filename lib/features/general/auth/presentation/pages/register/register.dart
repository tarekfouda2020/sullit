part of 'register_imports.dart';

class Register extends StatefulWidget {
  final LoginController loginController;
  const Register({Key? key, required this.loginController}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final RegisterController controller;

  @override
  void initState() {
    controller = RegisterController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildRegisterFormFields(registerController: controller),
        Gaps.vGap10,
        BuildRegisterButton(controller: controller),
        Gaps.vGap10,
        BlocBuilder<GenericBloc<List<SocialMediaLogin>>, GenericState<List<SocialMediaLogin>>>(
          bloc: widget.loginController.socialMediaLoginCubit,
          builder: (context, state) {
            if (state.data.isEmpty) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: List.generate(3, (index) {
                  return BuildShimmerItem(
                    width: 30,
                    height: 30,
                    borderRadius: Dimens.borderRadius30PX,
                  );
                },),
              );
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: List.generate(
                state.data.length,
                    (index) {
                  SocialMediaLogin item = state.data[index];
                  return Visibility(
                    visible: item.provider == "google" ||
                        (item.provider == "apple" && Platform.isIOS),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: () {
                          if (item.provider == "google") {
                            widget.loginController.signWitGoogle(context);
                          }
                        },
                        child: CachedNetworkImage(
                          imageUrl: item.logo,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),

      ],
    );
  }
}
