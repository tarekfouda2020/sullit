part of 'product_details_widgets_imports.dart';

class BuildShareItem extends StatelessWidget {
  final void Function() onTap;

  const BuildShareItem({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildIconItem(
      width: 32,
      height: 32,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      changeBgColor: false,
      radius: Dimens.dp5,
      iconData: Icons.share,
      onTap: onTap,
    );
  }
}
