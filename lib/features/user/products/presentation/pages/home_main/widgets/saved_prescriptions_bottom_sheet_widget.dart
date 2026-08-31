part of 'home_main_widgets_imports.dart';

class SavedPrescriptionsBottomSheetWidget extends StatelessWidget {
  final HomeMainController controller;

  const SavedPrescriptionsBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
      ),
      padding: Dimens.paddingAll20PX,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BottomSheetHeaderWidget(title: tr('savedPrescriptions')),
          Gaps.vGap20,
          Flexible(
            child: BlocBuilder<GenericBloc<SavedPrescriptionModel?>,
                GenericState<SavedPrescriptionModel?>>(
              bloc: controller.selectedSavedPrescriptionCubit,
              builder: (context, selectedState) {
                return CustomRefreshIndicatorWidget(
                  onRefresh: () => controller.getSavedPrescriptions(1),
                  child: PagedListView<int, SavedPrescriptionModel>(
                    pagingController: controller.savedPrescriptionsPagingController,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    builderDelegate: PagedChildBuilderDelegate<SavedPrescriptionModel>(
                      itemBuilder: (context, item, index) => Padding(
                        padding: const EdgeInsets.only(bottom: Dimens.dp15),
                        child: SavedPrescriptionItemWidget(
                          fileName: item.fileName,
                          lastUse: item.lastUsedAt,
                          isImage: item.isImage,
                          url: item.url,
                          selected: selectedState.data?.id == item.id,
                          onTap: () => controller.onSelectSavedPrescription(item),
                        ),
                      ),
                      noItemsFoundIndicatorBuilder: (context) => Center(
                        child: Text(
                          tr('noSavedPrescriptionsFound'),
                          style: AppTextStyle.s14_w400(color: context.colors.grey),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Gaps.vGap20,
          DefaultButton(
            title: tr('confirm'),
            onTap: () => Navigator.pop(context),
            margin: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
