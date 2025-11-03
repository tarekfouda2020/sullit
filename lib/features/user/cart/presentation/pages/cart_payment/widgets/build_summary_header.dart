part of 'cart_payment_widgets_imports.dart';

class BuildSummaryHeader extends StatelessWidget {
  final String title;
  final String details;
  final Color? detailsColor;
  final bool useDirhamPrice;
  final bool isDiscount;
  final bool? applyDashSeperate;
  final void Function()? onPressInfo;
  const BuildSummaryHeader({
    super.key,
    required this.title,
    required this.details,
    this.detailsColor,
    this.useDirhamPrice = false,
    this.isDiscount = false,
    this.applyDashSeperate = false,
    this.onPressInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                Gaps.hGap10,
                if(onPressInfo!=null)
                GestureDetector(
                  onTap: onPressInfo,
                  child: Container(
                    width: 15, height: 15,
                    margin: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: context.colors.gray3,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.question_mark,color: context.colors.gray,size: 13,),
                  ),
                )
              ],
            ),
          ),
          if(isDiscount)
          Text(
            " - ",
            style: AppTextStyle.s14_w600(color: context.colors.primary),
          ),
           DirhamPrice(
                  amount: isDiscount
                      ?details.replaceAll("-", "")
                      :details,
                  textStyle: AppTextStyle.s14_w600(color: detailsColor ?? context.colors.black),
            currencyStyle: AppTextStyle.s16_w400(color: detailsColor ?? context.colors.black),
            currencyOffset: 0,
            showMinus: false,
             applyDashSeperate: applyDashSeperate,
                )
             ,
        ],
      ),
    );
  }
}
