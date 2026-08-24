part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantBuildWalletBalance extends StatelessWidget {
  final String walletBalance;

  const RestaurantBuildWalletBalance({Key? key, required this.walletBalance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical15PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tr('walletBalance'),
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
          Text(
            walletBalance,
            style: AppTextStyle.s16_w800(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
