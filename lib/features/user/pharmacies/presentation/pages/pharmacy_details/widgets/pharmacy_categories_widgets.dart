part of 'widgets_imports.dart';


class PharmacyCategoriesWidgets extends StatelessWidget {
  final PharmacyDetailsController controller;
  const PharmacyCategoriesWidgets({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.refreshCategories,
      builder: (context, state) {
      return Visibility(
        visible: controller.categoriesPagingController.itemList?.isNotEmpty == true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PharmacyPageProductsSectionWidget(),
            Gaps.vGap12,
            PharmacyPageCategoriesWidget(
              controller: controller,
            ),
            Gaps.vGap12,
          ],
        ),
      );
    },);
  }
}
