part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final List<FlashSale> flashSales;
  final HomeMainController controller;

  const BuildDeals(
      {super.key, required this.flashSales, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: List.generate(
          flashSales.length,
          (index) {
            if(index==0){
              return Expanded(
                child: BuildDealsItem(
                  flashSaleModel: flashSales[index],
                  controller: controller,
                ),
              );
            }
            else
              {
                return Gaps.empty;
              }
          }
        ),
      ),
    );
  }
}
