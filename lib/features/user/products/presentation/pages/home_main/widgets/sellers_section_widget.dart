part of 'home_main_widgets_imports.dart';

class SellersSectionWidget extends StatelessWidget {
  final HomeMainController controller;

  const SellersSectionWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.dp220,
      child: ListView.builder(
        itemCount: controller.homeCubit.state.data!.shop.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: SellerCardWidget(
              shop: controller.homeCubit.state.data!.shop[index],
              onTap: () => AutoRouter.of(context).push(SellerProductsPageRoute(
                shopModel: controller.homeCubit.state.data!.shop[index],
              )),
            ),
          );
        },
      ),
    );
  }
}
