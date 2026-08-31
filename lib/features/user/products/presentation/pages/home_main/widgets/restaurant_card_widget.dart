part of 'home_main_widgets_imports.dart';

class RestaurantCardWidget extends StatelessWidget {
  final ShopCardDomainModel restaurantModel;

  const RestaurantCardWidget({
    super.key,
    required this.restaurantModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        PharmacyDetailsRoute(pharmacyId: restaurantModel.id,
        type: CartTypeEnum.restaurant
        ),
      ),
      child: SellerCardSectionWidget(image: restaurantModel.logo, name: restaurantModel.name,),
    );
  }
}
