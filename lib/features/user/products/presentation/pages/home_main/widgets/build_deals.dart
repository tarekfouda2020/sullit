part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final List<FlashSale> flashSales;
  final HomeMainController controller;

  const BuildDeals(
      {super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 29,horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 146,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    Res.flashSaleLogo,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 14, right: 18, left: 18),
            height: 117,
            width: 183,
            decoration: BoxDecoration(
              color: context.colors.black.withOpacity(0.25),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Flash Sale',
                  style: AppTextStyle.s14_w500(color: context.colors.white),
                ),
                Gaps.vGap8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BuildCustomTimer(
                      time: '52',
                      text: 'Days',
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time: '04',
                      text: 'Hours',
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time: '25',
                      text: 'Minutes',
                    ),
                    Text(':'),
                    BuildCustomTimer(
                      time: '17',
                      text: 'Seconds',
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    controller.navigateToDeals(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 15),
                    height: 25,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: context.colors.white,
                    ),
                    child: Text(
                      "Buy Now",
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
