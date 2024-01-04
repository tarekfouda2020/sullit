part of 'contact_us_widgets_imports.dart';

class BuildSocial extends StatelessWidget {
  final ContactUsController controller;

  const BuildSocial({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>, GenericState<String>>(
      bloc: controller.contactUsCubit,
      builder: (context, state) {
        return Padding(
          padding: Dimens.paddingVertical15PX,
          child: Center(
            child: InkWell(
              onTap: () => HelperMethods.instance.launchWhatsApp(state.data),
              child: Image.asset(Res.whats, width: 45, height: 45),
            ),
          ),
        );
      },
    );
  }
}
