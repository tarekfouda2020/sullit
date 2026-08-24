part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantNearestVipCartWidget extends StatelessWidget {
  const RestaurantNearestVipCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VipOffersWidget(
      onTap: () {},
      title: "save 4 in Your next order when upgrade",
      subTitle: "Platinum Plan",
      buttonText: 'Upgrade now',
      margin: EdgeInsets.zero,
    );
  }
}
