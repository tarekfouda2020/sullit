part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final FlashSale flashSales;
  final HomeMainController controller;

  const BuildDeals(
      {super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll15PX,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: Dimens.dp150,
            width: MediaQuery.of(context).size.width,
            child: CachedImage(
              url: flashSales.banner,
              fit: BoxFit.fill,
              borderRadius: Dimens.borderRadius10PX,
            ),
          ),
          Container(
            padding: Dimens.paddingAll15PX,
            // height: 117,
            width: 183,
            decoration: BoxDecoration(
              color: context.colors.black.withOpacity(0.25),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  flashSales.title,
                  style: AppTextStyle.s14_w500(color: context.colors.white),
                ),
                Gaps.vGap8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    BuildCustomTimer(
                      time: "${flashSales.date.day}",
                      text: tr("days"),
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time: "${flashSales.date.hour}",
                      text: tr("hours"),
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time: "${flashSales.date.minute}",
                      text: tr("minutes"),
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time:"${flashSales.date.second}",
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
                    width: 78,
                    padding: Dimens.paddingVertical5PX,
                    decoration: BoxDecoration(
                      borderRadius:Dimens.borderRadius10PX,
                      color: context.colors.white,
                    ),
                    child: Text(
                      tr("buyNow"),
                      style: AppTextStyle.s10_w500(color: context.colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
