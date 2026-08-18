part of 'home_main_widgets_imports.dart';

class CategoriesHeaderWidget extends StatelessWidget {
  final HomeMainController controller;
  const CategoriesHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tr("categories"),
          style: AppTextStyle.s16_w600(color: context.colors.black),
        ),
        GestureDetector(
          onTap: () => controller.homeController.animateTabsPages(1, context),
          child: Text(
            tr("seeAll"),
            style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
        ),
      ],
    );
  }
}
