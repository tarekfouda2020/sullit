part of 'widgets_imports.dart';

class RestaurantAddressButtonsWidget extends StatelessWidget {
  final RestaurantAddressController controller;

  const RestaurantAddressButtonsWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
      ),
      child: CustomBottomSafeAreaWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            DefaultButton(
              title: tr("proceedToCheckout"),
              onTap: () => controller.onPressProceed(context),
              color: context.colors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              margin: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
