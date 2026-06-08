part of 'home_main_widgets_imports.dart';

class PharmacyAdvantagesWidget extends StatelessWidget {
  const PharmacyAdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        _advantageItem(context,
            icon: Res.medicRecipeIcon,
            title: "Upload Prescription",
            subTitle: "Upload medical prescription during checkout"),
        _advantageItem(context,
            icon: Res.healthShield,
            title: "Health Insurance",
            subTitle: "Connect your health insurance provider"),
        _advantageItem(context,
            icon: Res.pharmacyDelivery,
            title: "Trusted Delivery",
            subTitle: "Temperature-controlled, fast delivery"),
      ],
    );
  }

  Widget _advantageItem(BuildContext context,
      {required String icon, required String title, required String subTitle}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(icon, height: 32, width: 32),
          Gaps.vGap8,
          Text(
            textAlign: TextAlign.center,
            title,
            style: AppTextStyle.s14_w800(color: context.colors.oceanBlue),
          ),
          Gaps.vGap6,
          Text(
            textAlign: TextAlign.center,
            subTitle,
            maxLines: 2,
            style: AppTextStyle.s12_w300(color: context.colors.textColor),
          ),
        ],
      ),
    );
  }
}
