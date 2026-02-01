part of 'widgets_imports.dart';

class SellerSearchFiledWidget extends StatelessWidget {
  final BestSellersPageController controller;

  const SellerSearchFiledWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal15PX,
      child: CustomSearchFiledWidget(
        txtController: controller.searchTxtController,
        onPressSearch: () => controller.getBestSellers(1) ,
        onChange: (value) => controller.whileWriting(value),
        onPressClear: () => controller.clearSearchField(),
        hint: "Search in sellers....",
        height: 50,
      ),
    );
  }
}
