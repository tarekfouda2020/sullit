part of 'share_holder_view_widgets_imports.dart';

class ShareHolderFormWidget extends StatelessWidget {
  final ProfileController controller;
  const ShareHolderFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 21, 16, 30),
      margin: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(
          color: context.colors.gray3
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Your Data",
            style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
            Gaps.vGap24,
            BuildProfileFormFields(controller: controller)
          ],
        ),
      ),
    );
  }
}
