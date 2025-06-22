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
          DealsCountDownWidget(flashSales: flashSales,controller: controller),
        ],
      ),
    );
  }
}
