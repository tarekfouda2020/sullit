part of 'cart_payment_widgets_imports.dart';

class BuildSummaryHeader extends StatelessWidget {
  final String title;
  final String details;
  final Color? detailsColor;
  final bool useDirhamPrice;
  final bool isDiscount;
 final void Function()? onPressInfo;
  const BuildSummaryHeader({
    super.key,
    required this.title,
    required this.details,
    this.detailsColor,
    this.useDirhamPrice = false,
    this.isDiscount = false,
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
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Gaps.hGap5,
                if(onPressInfo!=null)
                  _infoContainer(),
              ],
            ),
          ),
          if(isDiscount)
          Text(
            " - ",
            style: AppTextStyle.s14_w600(color: context.colors.primary),
          ),
           DirhamPrice(
                  amount: details,
                  textStyle: AppTextStyle.s14_w600(color: detailsColor ?? context.colors.black),
            currencyStyle: AppTextStyle.s16_w400(color: detailsColor ?? context.colors.black),
            currencyOffset: 0,
            showMinus: false,
                )
             ,
        ],
      ),
    );
  }



  Widget _infoContainer(){
    return GestureDetector(
      onTap: onPressInfo,
      child: Container(
        width: Dimens.dp16, height: Dimens.dp16,
        margin: const EdgeInsets.only(bottom: 8),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xffD9D9D9),
          shape: BoxShape.circle
        ),
        child: const Icon(Icons.question_mark,color: Color(0xff5C5C5C),size: 10,),
      ),
    );
  }


}
