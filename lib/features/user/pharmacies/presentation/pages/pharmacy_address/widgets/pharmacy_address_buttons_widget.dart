part of 'widgets_imports.dart';

class PharmacyAddressButtonsWidget extends StatelessWidget {
  final PharmacyAddressController controller;

  const PharmacyAddressButtonsWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.dp20, vertical: Dimens.dp15),
      decoration: BoxDecoration(
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: CustomBottomSafeAreaWidget(
        child: DefaultButton(
          title: tr("proceedToCheckout"),
          onTap: () {},
          color: context.colors.primary,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
