part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantBuildSummaryItem extends StatelessWidget {
  final String title;
  final String details;
  final bool useDirhamPrice;

  const RestaurantBuildSummaryItem({
    super.key,
    required this.title,
    required this.details,
    this.useDirhamPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      leading: Icon(Icons.circle, color: context.colors.primary, size: 10),
      minLeadingWidth: 10,
      title: Text(
        title,
        style: AppTextStyle.s15_w500(color: context.colors.black),
      ),
      trailing: useDirhamPrice
          ? DirhamPrice(
              amount: details,
              textStyle: AppTextStyle.s15_w500(color: context.colors.black),
            )
          : Text(
              details,
              style: AppTextStyle.s15_w500(color: context.colors.black),
            ),
    );
  }
}
