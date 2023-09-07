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
            "Default Shipping Address",
            style: AppTextStyle.s16_w500(color: context.colors.primary),
          ),
          Gaps.vGap10,
          Visibility(
            visible: dashboardModel.defaultAddress != null,
            replacement: Text(
              "Not Determined Yet ! ",
              style: AppTextStyle.s15_w500(color: context.colors.black),
            ),
            child: Column(
              children: [
                BuildAddressTitleItem(
                  title: "Address",
                  desc: dashboardModel.defaultAddress?.address ?? "",
                ),
                BuildAddressTitleItem(
                  title: "Postal code",
                  desc: dashboardModel.defaultAddress?.postalCode ?? "",
                ),
                // BuildAddressTitleItem(
                //   title: "City",
                //   desc: dashboardModel.defaultAddress?.city?.name ?? "",
                // ),
                // BuildAddressTitleItem(
                //   title: "State",
                //   desc: dashboardModel.defaultAddress?.state?.name ?? "",
                // ),
                // BuildAddressTitleItem(
                //   title: "Country",
                //   desc: dashboardModel.defaultAddress?.country?.name ?? "",
                // ),
                BuildAddressTitleItem(
                  title: "Phone",
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
