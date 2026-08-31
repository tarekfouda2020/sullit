part of 'home_main_widgets_imports.dart';

class HomePharmaciesWidget extends StatelessWidget {
  final HomeMainController controller;

  const HomePharmaciesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: controller.homeCubit.state.data!.pharmacyShops.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildHeaderTitle(
            title: tr('pharmacies'),
            onTap: () => controller.routeToPharmaciesList(context),
          ),
          SizedBox(
            height: 116,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 12,
                children: List.generate(
                  controller.homeCubit.state.data!.pharmacyShops.length,
                  (index) {
                    var item = controller.homeCubit.state.data!.pharmacyShops[index];
                    return GestureDetector(
                      onTap: () {
                        if (item.id != null) {
                          AutoRouter.of(context).push(PharmacyDetailsRoute(pharmacyId: item.id!));
                        }
                      },
                      child: SellerCardSectionWidget(
                        image: item.sliders.first,
                        name: item.name,
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
