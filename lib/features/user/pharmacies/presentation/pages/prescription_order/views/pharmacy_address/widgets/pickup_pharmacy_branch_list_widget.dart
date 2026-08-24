part of 'widgets_imports.dart';

class PickupPharmacyBranchListWidget extends StatelessWidget {
  final PagingController<int, BranchDomainModel> pagingController;
  final void Function(BranchDomainModel) onSelectBranch;

  const PickupPharmacyBranchListWidget({
    super.key,
    required this.pagingController,
    required this.onSelectBranch,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pickup Pharmacy Branch",
          style: AppTextStyle.s16_w600(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
        Expanded(
          child: CustomRefreshIndicatorWidget(
            onRefresh: () async {
              pagingController.refresh();
            },
            child: PagedListView<int, BranchDomainModel>(
              pagingController: pagingController,
              builderDelegate:
                  PagedChildBuilderDelegate<BranchDomainModel>(
                itemBuilder: (context, item, index) {
                  return PickupPharmacyBranchItemWidget(
                    model: item,
                    onTap: () => onSelectBranch(item),
                  );
                },
                noItemsFoundIndicatorBuilder: (context) => Center(
                  child: Text(
                    "No branches available",
                    style: AppTextStyle.s14_w400(
                      color: context.colors.textColor,
                    ),
                  ),
                ),
                firstPageProgressIndicatorBuilder: (context) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                newPageProgressIndicatorBuilder: (context) => Padding(
                  padding: EdgeInsets.all(Dimens.dp16),
                  child: const SizedBox(
                    height: 30,
                    width: 30,
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
    );
  }
}
