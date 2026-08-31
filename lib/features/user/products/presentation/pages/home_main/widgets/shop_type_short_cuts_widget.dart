part of 'home_main_widgets_imports.dart';

class ShopTypeShortCutsWidget extends StatelessWidget {
  final HomeMainController controller;

  const ShopTypeShortCutsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: CategoryCardWidget(
            title: tr('groceries'),
            image: Res.groceries,
            backgroundColor: context.colors.lightPink,
            textColor: context.colors.primary,
            onTap: () => AutoRouter.of(context).push(
              const BestSellersPageRoute(),
            ),
          ),
        ),
        Expanded(
          child: CategoryCardWidget(
            title: tr('pharmacies'),
            image: Res.pharmacies,
            backgroundColor: context.colors.lightBlue,
            textColor: context.colors.oceanBlue,
            onTap: () => controller.routeToPharmaciesList(context),
          ),
        ),
        Expanded(
          child: CategoryCardWidget(
            title: tr('restaurants'),
            image: Res.restaurants,
            backgroundColor: context.colors.lightOrange2,
            textColor: context.colors.darkOrange,
            onTap: () => AutoRouter.of(context).push(
              const RestaurantsRoute(),
            ),
          ),
        ),
      ],
    );
  }
}
