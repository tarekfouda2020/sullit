part of 'home_main_widgets_imports.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal10PX,
      child: Row(
        children: [
          Expanded(
              child: _advantageItem(
            context,
            title: tr("freeDelivery"),
            icon: Res.truckIcon,
            subTitle: tr("from200AED"),
          )),
          Expanded(
              child: _advantageItem(
            context,
            title: tr("99Customer"),
            icon: Res.feedBackIcon,
            subTitle: tr("feedbacks"),
          )),
          Expanded(
              child: _advantageItem(
            context,
            title: tr("7Days"),
            icon: Res.recyleIcon,
            subTitle: tr("forFreeReturn"),
          )),
          Expanded(
              child: _advantageItem(
            context,
            title: tr("payment"),
            icon: Res.savePaymentIcon,
            subTitle: tr("secureSystem"),
          )),
        ],
      ),
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
