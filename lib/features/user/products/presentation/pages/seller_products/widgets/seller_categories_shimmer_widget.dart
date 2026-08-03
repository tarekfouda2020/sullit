part of 'seller_products_widgets_imports.dart';

class SellerCategoriesShimmerWidget extends StatelessWidget {
  const SellerCategoriesShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: List.generate(4, (index) {
          return Container(
            margin: EdgeInsetsDirectional.only(start: index == 0 ? 20 : 8),
            child: BuildShimmerItem(
              width: 80,
              height: 40,
              borderRadius: Dimens.borderRadius40PX,
            ),
          );
        }),
      ),
    );
  }
}
