part of 'categories_widgets_imports.dart';

class BuildLoadingSideCategories extends StatelessWidget {
  const BuildLoadingSideCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.marginTop10,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.colors.greyWhite,
                ),
                padding: Dimens.paddingAll20PX,
                child: const BuildShimmerItem(
                  height: Dimens.dp15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
