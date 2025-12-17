part of 'seller_products_widgets_imports.dart';


class SellerPageCategoriesWidget extends StatelessWidget {
  const SellerPageCategoriesWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // spacing: 8,
          children: List.generate(10, (index) {
            final bool isSelected = index==0;
            return  Container(
              padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 12),
              margin: EdgeInsetsDirectional.only(
                start: index==0
                    ?20
                    :8,
                end: index == 10-1
                    ?20
                    :0
              ),
              decoration: BoxDecoration(
                  color: isSelected
                      ?context.colors.primary
                      :context.colors.gray3,
                borderRadius: Dimens.borderRadius40PX
              ),
              child: Text("Whole Chicken",
                style: AppTextStyle.s14_w500(color:
                isSelected
                    ?context.colors.white
                    : context.colors.gray8
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}
