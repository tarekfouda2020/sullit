part of 'home_main_widgets_imports.dart';

class CategoriesHeaderWidget extends StatelessWidget {
  const CategoriesHeaderWidget({super.key});

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
          onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
          child: Text(
            tr("seeAll"),
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
        ),
      ],
    );
  }
}
