part of 'contact_us_widgets_imports.dart';

class BuildContactUsButton extends StatelessWidget {
  final ContactUsController controller;

  const BuildContactUsButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
          title: "Submit",
          onTap: () => controller.contactUs(),
          color: context.colors.primary,
          textColor: context.colors.white,
          btnKey: controller.btnKey,
          margin: Dimens.paddingAll20PX,
          height: 35.h,
        ),
      ],
    );
  }
}
