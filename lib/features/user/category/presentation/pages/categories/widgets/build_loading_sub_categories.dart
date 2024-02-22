part of 'categories_widgets_imports.dart';

class BuildLoadingSubCategories extends StatelessWidget {
  const BuildLoadingSubCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: Dimens.dp10,
      spacing: Dimens.dp10,
      children: List.generate(
        5,
        (index) => SizedBox(
          width: Dimens.dp96,
          child: Column(
            children: const [
              BuildShimmerItem(
                width: Dimens.dp96,
                height: Dimens.dp96,
              ),
              BuildShimmerItem(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
