part of 'contact_us_widgets_imports.dart';

class ContactUsSocialItemWidget extends StatelessWidget {
  final String imagePath;
  final void Function() onTap;
  final bool isSvg;

  const ContactUsSocialItemWidget({
    super.key,
    required this.imagePath,
    required this.onTap,
    this.isSvg = true,
  });

  @override
  Widget build(BuildContext context) {
    return isSvg
        ? SvgPicture.asset(
            imagePath,
            width: 37,
            height: 37,
          )
        : Image.asset(
            imagePath,
            width: 40,
            height: 40,
          );
  }
}
