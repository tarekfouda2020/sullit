part of 'categories_widgets_imports.dart';

class BuildLoadingSideSubCategories extends StatelessWidget {
  const BuildLoadingSideSubCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH10V5,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: BuildShimmerItem(height: Dimens.dp15),
                      ),
                      Gaps.hGap5,
                      BuildShimmerItem(
                        height: Dimens.dp22,
                        width: Dimens.dp22,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: context.colors.black,
                          size: Dimens.dp20,
                        ),
                      ),
                    ],
                  ),
                  Gaps.line(context.colors.grey, Dimens.dp22),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
