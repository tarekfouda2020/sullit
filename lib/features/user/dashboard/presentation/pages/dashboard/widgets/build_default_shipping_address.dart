part of 'dashboard_widgets_imports.dart';

class BuildDefaultShippingAddress extends StatelessWidget {
  final Dashboards dashboardModel;

  const BuildDefaultShippingAddress({super.key, required this.dashboardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr("defaultAddress"),
            style: AppTextStyle.s16_w500(color: context.colors.primary),
          ),
          Gaps.vGap10,
          Visibility(
            visible: dashboardModel.defaultAddress != null,
            replacement: Text(
              tr("notDetermined") ,
              style: AppTextStyle.s15_w500(color: context.colors.black),
            ),
            child: Column(
              children: [
                BuildAddressTitleItem(
                  title: tr("address"),
                  desc: dashboardModel.defaultAddress?.address ?? "",
                ),
                BuildAddressTitleItem(
                  title: tr("postalCode"),
                  desc: dashboardModel.defaultAddress?.postalCode ?? "",
                ),
                BuildAddressTitleItem(
                  title: tr("city"),
                  desc: dashboardModel.defaultAddress?.city?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: tr("state"),
                  desc: dashboardModel.defaultAddress?.state?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: tr("country"),
                  desc: dashboardModel.defaultAddress?.country?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: tr("phone"),
                  desc: dashboardModel.defaultAddress?.phone ?? "",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
