part of 'cart_payment_widgets_imports.dart';

class NearestVipCartWidget extends StatelessWidget {
  const NearestVipCartWidget({super.key});

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
