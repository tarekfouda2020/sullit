
part of 'widgets/share_holder_view_widgets_imports.dart';


class ShareHolderView extends StatelessWidget {
  final ProfileController controller;
  const ShareHolderView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const ShareHolderBackGroundWidget(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: kToolbarHeight-30,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gaps.vGap(MediaQuery.paddingOf(context).top),
                  ShareHolderAdvantageWidget(controller: controller),
                  Gaps.vGap20,
                  ShareHolderFormWidget(controller: controller),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: ChangePasswordWidget(controller: controller),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
