part of 'home_main_widgets_imports.dart';

class RestaurantCardWidget extends StatelessWidget {
  final ShopCardDomainModel restaurantModel;

  const RestaurantCardWidget({
    super.key,
    required this.restaurantModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => AutoRouter.of(context).push(
            PharmacyDetailsRoute(pharmacyId: restaurantModel.id,
            type: CartTypeEnum.restaurant
            ),
          ),
          child: Container(
            width: 181,
            height: 72,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: context.colors.borderColor,
              ),
            ),
            child: CachedImage(
              width: double.infinity,
              url: restaurantModel.logo,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gaps.vGap4,
        Text(
          restaurantModel.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s14_w600(color: context.colors.black),
        ),
      ],
    );
  }
}
