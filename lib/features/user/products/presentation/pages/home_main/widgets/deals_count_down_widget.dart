part  of'home_main_widgets_imports.dart';

class DealsCountDownWidget extends StatelessWidget {
  final FlashSale flashSales;
 final HomeMainController controller;
  const DealsCountDownWidget({super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: Dimens.paddingAll15PX,
      // height: 117,
      decoration: BoxDecoration(
        color: context.colors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            flashSales.title.toUpperCase(),
            style: AppTextStyle.s16_w700(color: context.colors.white),
          ),
          Gaps.vGap8,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              BuildCustomTimer(
                firstTimeNumber: controller.getCountDownSingleNumber(flashSales.date.day,0),
                secondTimeNumber: controller.getCountDownSingleNumber(flashSales.date.day,1),
                text: tr("days"),
              ),
              _buildSeparatorText(context),
              BuildCustomTimer(
                firstTimeNumber: controller.getCountDownSingleNumber(flashSales.date.hour,0),
                secondTimeNumber: controller.getCountDownSingleNumber(flashSales.date.hour,1),
                text: tr("hours"),
              ),
              _buildSeparatorText(context),
              BuildCustomTimer(
                firstTimeNumber: controller.getCountDownSingleNumber(flashSales.date.minute,0),
                secondTimeNumber: controller.getCountDownSingleNumber(flashSales.date.minute,1),
                text: tr("minutes"),
              ),
              _buildSeparatorText(context),
              BuildCustomTimer(
                firstTimeNumber: controller.getCountDownSingleNumber(flashSales.date.second,0),
                secondTimeNumber: controller.getCountDownSingleNumber(flashSales.date.second,1),
                text: tr("second"),
              ),
            ],
          ),
          InkWell(
            onTap: () => controller.navigateToDeals(context),
            child: Container(
              alignment: Alignment.center,
              margin: Dimens.marginTop10,
              // height: 25,
              width: 164,
              padding: Dimens.paddingVertical9PX,
              decoration: BoxDecoration(
                borderRadius:Dimens.borderRadius30PX,
                color: context.colors.white,
              ),
              child: Text(
                tr("buyNow"),
                style: AppTextStyle.s14_w700(color: context.colors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeparatorText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(':',
                style: AppTextStyle.s16_w700(color: context.colors.gold),
              ),
    );
  }
}
