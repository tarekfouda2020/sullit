part of 'coupons_widgets_imports.dart';

class BuildTabsView extends StatelessWidget {
  const BuildTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical10PX,
      child: TabBar(
        labelPadding: Dimens.paddingVertical10PX,
        indicatorColor: context.colors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Text(
            tr("newArrival"),
            style: AppTextStyle.s15_w600(
              color: context.colors.black,
            ),
          ),
          Text(
            tr("onSale"),
            style: AppTextStyle.s15_w600(
              color: context.colors.black,
            ),
          ),
          Text(
            tr("bestRated"),
            style: AppTextStyle.s15_w600(
              color: context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
