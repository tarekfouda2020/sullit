part of 'contact_us_widgets_imports.dart';

class BuildSocial extends StatelessWidget {
  final ContactUsController controller;

  const BuildSocial({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ContactUsSocialModel>>, GenericState<List<ContactUsSocialModel>>>(
      bloc: controller.contactUsSocialCubit,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return Padding(
            padding: Dimens.paddingVertical15PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(state.data.length, (index) {
                  return ContactUsSocialItemWidget(
                    imagePath: '',
                    applyCashedImage: true,
                    model: state.data[index],
                  );
                })
                // BlocBuilder<GenericBloc<String>, GenericState<String>>(
                //   bloc: controller.contactUsCubit,
                //   builder: (context, state) {
                //     return ContactUsSocialItemWidget(
                //       imagePath: Res.whats,
                //       isSvg: false,
                //       onTap: () => HelperMethods.instance.launchWhatsApp(state.data),
                //     );
                //   },
                //  ),
                // Gaps.hGap16,
                // ContactUsSocialItemWidget(
                //     imagePath: Res.twitterIcon,
                //     onTap: () {}
                // ),
                // Gaps.hGap16,
                // ContactUsSocialItemWidget(
                //     imagePath: Res.instagramIcon,
                //     isSvg: false,
                //     onTap: () {},
                //
                // ),
                // Gaps.hGap16,
                // ContactUsSocialItemWidget(
                //     imagePath: Res.tikTokIcon,
                //     onTap: () {}
                // ),
              ],
            ),
          );
        }else{
          return Padding(
            padding: Dimens.paddingVertical15PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return  const BuildShimmerItem(
                  width: 40,
                  height: 40,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                );
              }),
            ),
          );
        }

      },
    );
  }
}
