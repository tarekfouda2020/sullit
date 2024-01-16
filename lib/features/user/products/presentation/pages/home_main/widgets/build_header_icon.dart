part of 'home_main_widgets_imports.dart';

class BuildHeaderIcon extends StatelessWidget {
  final String image;
  final Function() onTap;

  const BuildHeaderIcon({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: context.colors.bgIcon,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
