part of 'addresses_widgets_imports.dart';

class BuildAddressTitleItem extends StatelessWidget {
  final String title;
  final String desc;

  const BuildAddressTitleItem(
      {super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title : ",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          Text(
            desc,
            style: AppTextStyle.s14_w600(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
