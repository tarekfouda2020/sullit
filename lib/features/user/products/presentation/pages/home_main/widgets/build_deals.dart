part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final List<FlashSale> flashSales;
  final HomeMainController controller;

  const BuildDeals(
      {super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        flashSales.length,
        (index) => Expanded(
          child: BuildDealsItem(
            flashSaleModel: flashSales[index],
            controller: controller,
          ),
        ),
      ),
    );
  }
}
