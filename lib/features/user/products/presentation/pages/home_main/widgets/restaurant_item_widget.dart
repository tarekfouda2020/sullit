part of 'home_main_widgets_imports.dart';

class RestaurantItemWidget extends StatelessWidget {
  final List<ShopCardDomainModel> restaurantModel;

  const RestaurantItemWidget({super.key, required this.restaurantModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: restaurantModel.length,
        separatorBuilder: (_, __) => Gaps.hGap12,
        itemBuilder: (context, index) {
          return RestaurantCardWidget(restaurantModel: restaurantModel[index]);
        },
      ),
    );
  }
}
