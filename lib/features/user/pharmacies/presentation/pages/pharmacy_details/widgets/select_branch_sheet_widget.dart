part of 'widgets_imports.dart';

class SelectBranchSheetWidget extends StatelessWidget {
  final PharmacyDetailsController controller;
  const SelectBranchSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: Column(
        spacing: 20,
        children: [
          const BottomSheetHeaderWidget(title: "Select Branch"),
          Expanded(
              child: CustomRefreshIndicatorWidget(
              onRefresh: () async => controller.getPharmacyBranches(1) ,
              child:  PagedListView<int, PharmacyBranchDomainModel>(
                pagingController: controller.branchesPagingController,
                builderDelegate: PagedChildBuilderDelegate<PharmacyBranchDomainModel>(
                  itemBuilder: (_, item, index) {
                    return PharmacyBranchItemWidget(
                      model: item,
                      controller: controller,
                    );
                  },
                  firstPageProgressIndicatorBuilder: (_) => const CircularProgressIndicator(),
                  newPageProgressIndicatorBuilder: (context) => const Center(
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                ),
              ))
          ),
        ],
      ),
    );
  }
}
