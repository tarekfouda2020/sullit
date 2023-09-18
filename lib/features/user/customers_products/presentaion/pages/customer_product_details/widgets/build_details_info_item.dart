part of 'customer_product_details_w_imports.dart';

class BuildDetailsInfoItem extends StatelessWidget {
  final String title;
  final IconData iconData;

  const BuildDetailsInfoItem(
      {super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      leading: Container(
        padding: Dimens.paddingAll5PX,
        decoration: BoxDecoration(
          color: context.colors.offWhite,
          shape: BoxShape.circle,
          border: Border.all(color: context.colors.offWhite),
        ),
        child: Icon(
          iconData,
          size: 15.sp,
          color: context.colors.black,
        ),
      ),
      title: Text(
        title,
        style: AppTextStyle.s14_w500(color: context.colors.black),
      ),
    );
  }
}
