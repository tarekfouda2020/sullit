part of 'seller_products_widgets_imports.dart';

class SellerPageCategoriesWidget extends StatelessWidget {
  final List<ShopCategory> category;
  final SellerProductsController controller;

  const SellerPageCategoriesWidget({
    super.key,
    required this.category,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<ShopCategory?>,GenericState<ShopCategory?>>(
        bloc: controller.categoryCubit,
        builder:(context, selectedCategory) {
          return SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(category.length, (index) {
                  final subCategory = category[index];
                  final bool isSelected =
                      selectedCategory.data?.id == subCategory.id;

                  return GestureDetector(
                    onTap: () {
                      controller.onSelectCategory(subCategory);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 12),
                      margin: EdgeInsetsDirectional.only(
                        start: index == 0 ? 20 : 8,
                        end: index == category.length - 1 ? 20 : 0,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? context.colors.primary
                            : context.colors.gray3,
                        borderRadius: Dimens.borderRadius40PX,
                      ),
                      child: Text(
                        subCategory.name,
                        style: AppTextStyle.s14_w500(
                          color: isSelected
                              ? context.colors.white
                              : context.colors.gray8,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          );
        },
    );
  }
}
