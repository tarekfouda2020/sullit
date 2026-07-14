part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacySavedAmountWidget extends StatelessWidget {
  const PharmacySavedAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                context.colors.primary,
                context.colors.darkPrimary,
              ]),
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(12))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Res.savedAmountIcon),
          Gaps.hGap5,
          Text(
            tr("youSaved"),
            style: AppTextStyle.s18_w700(color: context.colors.white),
          ),
          Gaps.hGap5,
          DirhamPrice(
            amount: "20",
            textStyle: AppTextStyle.s18_w700(color: context.colors.white),
          )
        ],
      ),
    );
  }
}
