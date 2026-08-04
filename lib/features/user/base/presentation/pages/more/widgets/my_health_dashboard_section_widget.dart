part of 'more_widgets_imports.dart';

class MyHealthDashboardSectionWidget extends StatelessWidget {
  final MoreController controller;

  const MyHealthDashboardSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
      title: "My Health Dashboard",
      crossAxisCount: 2,
      children: [
        BuildMoreItem(
          title: "Pharmacy Orders",
          image: Res.pharmLogo,
          isSvg: true,
          onTap: () => controller.onPressMyHealthPharmacyOrders(context),
        ),
        BuildMoreItem(
          title: "Saved Prescriptions",
          image: Res.prescriptionLogo,
          isSvg: true,
          onTap: () => controller.onPressSavedPrescriptions(context),
        ),
      ],
    );
  }
}
