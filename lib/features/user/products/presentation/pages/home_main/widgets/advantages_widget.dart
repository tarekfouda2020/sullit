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
        Expanded(
          child: _advantageItem(
            context,
            title: tr("freeDelivery", context: context),
            icon: Res.truckIcon,
            // subTitle: tr("from200AED"),
            subTitle: "",
          ),
        ),
        Gaps.hGap12,
        Expanded(
          child: _advantageItem(
            context,
            title: tr("99Customer"),
            icon: Res.feedBackIcon,
            subTitle: tr("feedbacks"),
          ),
        ),
        Gaps.hGap6,
        Expanded(
          child: _advantageItem(
            context,
            title: tr("7Days"),
            icon: Res.recyleIcon,
            subTitle: tr("forFreeReturn"),
          ),
        ),
        Gaps.hGap6,
        Expanded(
          child: _advantageItem(
            context,
            title: tr("payment"),
            icon: Res.savePaymentIcon,
            subTitle: tr("secureSystem"),
          ),
        ),
      ],
    );
  }

  Widget _advantageItem(BuildContext context,
      {required String icon, required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(icon, height: 27, width: 30),
        Gaps.vGap8,
        FittedBox(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: AppTextStyle.s11_w700(color: context.colors.black),
          ),
        ),
        Gaps.vGap5,
        FittedBox(
          child: Text(
            textAlign: TextAlign.center,
            subTitle,
            style: AppTextStyle.s11_w400(color: context.colors.textColor),
          ),
        ),
      ],
    );
  }
}
