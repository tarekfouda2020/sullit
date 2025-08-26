part of 'home_main_widgets_imports.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 5,
            child: _advantageItem(
          context,
          title: tr("freeDelivery"),
          icon: Res.truckIcon,
          subTitle: tr("from200AED"),
        )),
        Flexible(
          flex: 6,
            child: _advantageItem(
          context,
          title: tr("99Customer"),
          icon: Res.feedBackIcon,
          subTitle: tr("feedbacks"),
        )),
        Flexible(
          flex: 6,
            child: _advantageItem(
          context,
          title: tr("7Days"),
          icon: Res.recyleIcon,
          subTitle: tr("forFreeReturn"),
        )),
        Flexible(
          flex: 6,
            child: _advantageItem(
          context,
          title: tr("payment"),
          icon: Res.savePaymentIcon,
          subTitle: tr("secureSystem"),
        )),
      ],
    );
  }

  Widget _advantageItem(BuildContext context, {required String icon, required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(icon),
        Gaps.vGap8,
        Text(
          textAlign: TextAlign.center,
          title,
          style: AppTextStyle.s11_w700(color: context.colors.black),
        ),
        Gaps.vGap5,
        Text(
          textAlign: TextAlign.center,
          subTitle,
          style: AppTextStyle.s11_w400(color: context.colors.textColor),
        ),
      ],
    );
  }
}
