part of 'seller_products_widgets_imports.dart';

class SellerPageBackGroundWidget extends StatelessWidget {
  const SellerPageBackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
              color: context.colors.white,
              border: Border(
                  bottom: BorderSide(color: context.colors.gray3, width: 1.5))),
        ),
        Expanded(
          child: Container(
            color: context.colors.customBackground,
          ),
        ),
      ],
    );
  }
}
