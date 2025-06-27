part of 'contact_us_widgets_imports.dart';

class BuildSocial extends StatelessWidget {
  final ContactUsController controller;

  const BuildSocial({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical15PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GenericBloc<String>, GenericState<String>>(
            bloc: controller.contactUsCubit,
            builder: (context, state) {
              return ContactUsSocialItemWidget(
                  imagePath: Res.whats,
                isSvg: false,
                onTap: () => HelperMethods.instance.launchWhatsApp(state.data),
              );
            },
          ),
          Gaps.hGap16,
          ContactUsSocialItemWidget(
              imagePath: Res.twitterIcon,
              onTap: (){}
          ),
          Gaps.hGap16,
          ContactUsSocialItemWidget(
              imagePath: Res.instagramIcon,
              isSvg: false,
              onTap: (){}
          ),
          Gaps.hGap16,
          ContactUsSocialItemWidget(
              imagePath: Res.tikTokIcon,
              onTap: (){}
          ),
        ],
      ),
    );
  }
}
