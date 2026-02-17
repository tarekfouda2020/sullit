part of 'more_widgets_imports.dart';

class OtherSectionWidget extends StatelessWidget {
  final MoreController controller;
  const OtherSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
      title: tr("other"),
      children: [
        // BuildMoreItem(
        //   image: Res.compareLogo,
        //   title: tr('compare'),
        //   onTap: () =>
        //       controller.checkAuth(context, MoreRoutes.compare),
        // ),
        // BuildMoreItem(
        //   image: Res.trackOrderLogo,
        //   title: tr('trackOrder'),
        //   onTap: () =>
        //       controller.checkAuth(context, MoreRoutes.trackOrder),
        // ),
        // BuildMoreItem(
        //   title: tr('downloads'),
        //   onTap: () =>
        //       controller.checkAuth(context, MoreRoutes.downloads),
        //   image: Res.downloadLogo,
        // ),
        //
        // BuildMoreItem(
        //   title: tr('dashboard'),
        //   onTap: () =>
        //       controller.checkAuth(context, MoreRoutes.dashboard),
        //   image: Res.dashboardLogo,
        // ),
        // BuildMoreItem(
        //   title: tr('classifiedProducts'),
        //   onTap: () => controller.checkAuth(
        //       context, MoreRoutes.classifiedProducts),
        //   image: Res.classifiedProduct,
        // ),
        // BuildMoreItem(
        //   title: tr('customersProducts'),
        //   onTap: () => controller.checkAuth(
        //       context, MoreRoutes.customersProducts),
        //   image: Res.customerProducts,
        // ),,

        BuildMoreItem(
          image: Res.contactUsIcon,
          size: 30,
          title: tr('contactUs'),
          isSvg: true,
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.contactUs),
        ),
        BuildMoreItem(
          image: Res.termsAndConditions,
          isSvg: true,
          title: tr('termsAndConditions'),
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.termsAndConditions),
        ),
        BuildMoreItem(
          image: Res.privacyPolicyIcon,
          isSvg: true,
          title: tr('privacyPolicy'),
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.privacyPolicy),
        ),
        BuildMoreItem(
          image: Res.globalIcon,
          isSvg: true,
          title: tr('langauge'),
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.language),
        ),
        BuildMoreItem(
          image: Res.supportPolicyIcon,
          isSvg: true,
          title: tr('supportPolicy'),
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.supportPolicy),
        ),
        BuildMoreItem(
          image: Res.returnPolicyIcon,
          isSvg: true,
          size: 30,
          title: tr('returnPolicy'),
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.returnPolicy),
        ),
        BuildMoreItem(
          image: Res.notification,
          svgColor: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
          isSvg: true,
          size: 30,
          title:  controller.getNotificationText(),
          onTap: () =>
              controller.openNotificationDialog(context),
        ),

      ],
    );
  }
}
