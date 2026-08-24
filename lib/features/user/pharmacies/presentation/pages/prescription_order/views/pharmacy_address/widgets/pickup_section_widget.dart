part of 'widgets_imports.dart';

class PickupSectionWidget extends StatelessWidget {
  final PagingController<int, BranchDomainModel> pagingController;
  final void Function(BranchDomainModel) onSelectBranch;

  const PickupSectionWidget({
    super.key,
    required this.pagingController,
    required this.onSelectBranch,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: PickupPharmacyBranchListWidget(
        pagingController: pagingController,
        onSelectBranch: onSelectBranch,
      ),
    );
  }
}
