part of 'contact_us_widgets_imports.dart';

class BuildContactUsButton extends StatelessWidget {
  final ContactUsController controller;

  const BuildContactUsButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: tr('send'),
      onTap: () => controller.contactUs(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: controller.btnKey,
      height: 35.h,
      elevation: 0,
    );
  }
}
