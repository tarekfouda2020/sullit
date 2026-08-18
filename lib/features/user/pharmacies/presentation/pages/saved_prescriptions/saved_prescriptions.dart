part of 'saved_prescriptions_imports.dart';

class SavedPrescriptions extends StatefulWidget {
  const SavedPrescriptions({super.key});

  @override
  State<SavedPrescriptions> createState() => _SavedPrescriptionsState();
}

class _SavedPrescriptionsState extends State<SavedPrescriptions> {
  late final SavedPrescriptionsController controller;

  @override
  void initState() {
    super.initState();
    controller = SavedPrescriptionsController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Saved Prescriptions"),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getSavedPrescriptions(1),
        child: PagedListView<int, SavedPrescriptionModel>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<SavedPrescriptionModel>(
            firstPageProgressIndicatorBuilder: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            itemBuilder: (_, item, index) => SavedPrescriptionCardWidget(
              model: item,
              onDelete: () => controller.onDelete(item),
            ),
            noItemsFoundIndicatorBuilder: (context) => const BuildEmptyDataView(
              text: "No saved prescriptions yet",
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomSafeAreaWidget(
        child: DefaultButton(
          title: "Add New Prescription",
          onTap: () => controller.onPressAddNewPrescription(context),
        ),
      ),
    );
  }
}
