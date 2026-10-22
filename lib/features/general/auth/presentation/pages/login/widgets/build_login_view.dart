part of 'login_widgets_imports.dart';

class BuildLoginView extends StatelessWidget {
  final LoginController controller;
  const BuildLoginView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildLoginForm(controller: controller),
        BuildLoginButton(controller: controller),
        const BuildForgetPasswordView(),
        Gaps.vGap30,
        BlocBuilder<GenericBloc<List<SocialMediaLogin>>, GenericState<List<SocialMediaLogin>>>(
          bloc: controller.socialMediaLoginCubit,
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
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          if (item.provider == "google") {
                            controller.signWitGoogle(context);
                          } else if (item.provider == "apple") {
                            controller.signWithApple(context);
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
