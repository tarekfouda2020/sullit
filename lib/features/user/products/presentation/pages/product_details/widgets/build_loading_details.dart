part of 'product_details_widgets_imports.dart';

class BuildLoadingDetails extends StatelessWidget {
  const BuildLoadingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            BuildShimmerItem(height: 350.spMin),
            PositionedDirectional(
              end: 10,
              top: 5,
              child: Column(
                children: [
                  BuildShimmerItem(
                    child: BuildIconItem(
                      onTap: () {},
                      padding: Dimens.paddingAll10PX,
                    ),
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              start: 5,
              top: 10,
              child: BuildShimmerItem(
                child: BuildIconItem(
                  onTap: () {},
                  padding: Dimens.paddingAll10PX,
                  iconData: Icons.arrow_back,
                ),
              ),
            )
          ],
        ),
        Flexible(
          child: ListView(
            children: const [
              BuildLoadingInfo(),
              BuildLoadingAttributes(),
            ],
          ),
        ),
        Padding(
          padding: Dimens.paddingHorizontal15PX,
          child: SizedBox(
            height: 45.h,
            child: Row(
              children: [
                BuildShimmerItem(
                  height: 45.h,
                  width: 45.h,
                  margin: Dimens.paddingAll5PX,
                ),
                Expanded(
                  child: BuildShimmerItem(
                    height: 45.h,
                    margin: Dimens.paddingAll5PX,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
