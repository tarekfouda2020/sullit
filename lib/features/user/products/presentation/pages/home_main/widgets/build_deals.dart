part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final FlashSale flashSales;
  final HomeMainController controller;

  const BuildDeals(
      {super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedImage(
            url: flashSales.banner,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            borderRadius: Dimens.borderRadius10PX,
            bgColor: Colors.transparent,
            placeHolder: Image.asset(
              Res.dealOfDayBackGround,
            ),
          ),
          DealsCountDownWidget(flashSales: flashSales, controller: controller),
        ],
      ),
    );
  }
}
