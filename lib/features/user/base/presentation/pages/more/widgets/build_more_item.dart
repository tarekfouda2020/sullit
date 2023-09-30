part of 'more_widgets_imports.dart';

class BuildMoreItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final bool haveStatus;

  const BuildMoreItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.haveStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: Dimens.paddingVertical5PX,
        decoration: CustomDecoration(),
        child: ListTile(
          leading: Icon(icon, color: context.colors.blackOpacity, size: 20.sp),
          title: Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          trailing: Visibility(
            visible: haveStatus,
            child: Container(
              padding: Dimens.paddingAll5PX,
              decoration: BoxDecoration(
                color: context.colors.green,
                borderRadius: Dimens.borderRadius5PX,
              ),
              child: Text(
                tr('new'),
                style: AppTextStyle.s10_w400(color: context.colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
