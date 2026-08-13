part of 'widgets_imports.dart';

class BranchesBottomSheetWidget extends StatelessWidget {
  final PagingController<int, BranchDomainModel> pagingController;
  final void Function(BranchDomainModel model) onSelect;

  const BranchesBottomSheetWidget({
    super.key,
    required this.pagingController,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          const BottomSheetHeaderWidget(title: "Select Branch"),
          Flexible(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async {},
              child: PagedListView<int, BranchDomainModel>(
                pagingController: pagingController,
                shrinkWrap: true,
                builderDelegate: PagedChildBuilderDelegate<BranchDomainModel>(
                  itemBuilder: (_, item, index) {
                    return BranchItemWidget(
                      model: item,
                      onTap: () => onSelect(item),
                    );
                  },
                  noItemsFoundIndicatorBuilder: (cxt) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  firstPageProgressIndicatorBuilder: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
