part of 'home_main_widgets_imports.dart';

class HomePharmaciesWidget extends StatelessWidget {
  final HomeMainController controller;
  const HomePharmaciesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildHeaderTitle(
          title: "Pharmacies",
          onTap: () => controller.routeToPharmaciesList(context),
        ),
        SizedBox(
          height: 118,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: List.generate(
                controller.homeCubit.state.data!.pharmacyShops.length,
                (index) {
                  var item = controller.homeCubit.state.data!.pharmacyShops[index];
                  return GestureDetector(
                    onTap: () => AutoRouter.of(context).push(PharmacyDetailsRoute(pharmacyId: item.id)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Gaps.vGap8,
                        CachedImage(
                          height: Dimens.dp72,
                          width: 185,
                          borderWidth: 1.5,
                          borderColor: context.colors.borderColor,
                          borderRadius: Dimens.borderRadius12PX,
                          url: item.sliders?.first ?? ""
                        ),
                        Gaps.vGap4,
                        SizedBox(
                          width: 170,
                          child: Text(
                            item.name ?? "",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.s15_w500(
                                color: context.colors.black),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
