part of 'home_main_widgets_imports.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: _advantageItem(
          context,
          title: "Free Delivery",
          icon: Res.truckIcon,
          subTitle: "From 200 AED",
        )),
        Expanded(
            child: _advantageItem(
          context,
          title: "99% Customer",
          icon: Res.feedBackIcon,
          subTitle: "Feedbacks",
        )),
        Expanded(
            child: _advantageItem(
          context,
          title: "7 Days",
          icon: Res.recyleIcon,
          subTitle: "For Free return",
        )),
        Expanded(
            child: _advantageItem(
          context,
          title: "Payment",
          icon: Res.savePaymentIcon,
          subTitle: "Secure system",
        )),
      ],
    );
  }

  Widget _advantageItem(BuildContext context, {required String icon, required String title, required String subTitle}) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Gaps.vGap8,
          Text(
            title,
            style: AppTextStyle.s12_w700(color: context.colors.black),
          ),
          Gaps.vGap5,
          Text(
            subTitle,
            style: AppTextStyle.s12_w300(color: context.colors.textColor),
          ),
        ],
      ),
    );
  }
}
