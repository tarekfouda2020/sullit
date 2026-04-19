part of 'widgets_imports.dart';

class PharmacyAddressButtonsWidget extends StatelessWidget {
  final PharmacyAddressController controller;

  const PharmacyAddressButtonsWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
      ),
      child: CustomBottomSafeAreaWidget(
        child: DefaultButton(
          title: tr("proceedToCheckout"),
          onTap: () {},
          color: context.colors.primary,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          margin: EdgeInsets.zero,
        ),
      ),
    );
  }
}
