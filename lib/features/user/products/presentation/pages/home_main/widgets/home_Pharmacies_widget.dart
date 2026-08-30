part of 'home_main_widgets_imports.dart';

class HomePharmaciesWidget extends StatelessWidget {
  final HomeMainController controller;
  const HomePharmaciesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:  controller.homeCubit.state.data!.pharmacyShops.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildHeaderTitle(
            title: "Pharmacies",
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
                        if(item.id!= null){
                          AutoRouter.of(context).push(PharmacyDetailsRoute(pharmacyId: item.id!));
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Gaps.vGap8,
                          CachedImage(
                            height: Dimens.dp72,
                            width: 182,
                            borderWidth: 1.5,
                            borderColor: context.colors.gray3,
                            border: Border.all(
                              color: context.colors.gray3,
                              width: 1.2
                            ),
                            borderRadius: Dimens.borderRadius12PX,
                            url: item.sliders?.first ?? ""
                          ),
                          Gaps.vGap4,
                          SizedBox(
                            width: 170,
                            child: Text(
                              item.name ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
      ),
    );
  }
}
