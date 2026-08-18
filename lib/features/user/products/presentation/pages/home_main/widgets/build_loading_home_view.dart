part of 'home_main_widgets_imports.dart';

class BuildLoadingHomeView extends StatelessWidget {
  const BuildLoadingHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        padding: Dimens.paddingAll10PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildShimmerItem(
                height: 160.spMin, margin: Dimens.paddingVertical5PX),
            Padding(
              padding: Dimens.paddingVertical5PX,
              child: Row(
                children: [
                  Expanded(child: BuildShimmerItem(height: 85.spMin)),
                  Gaps.hGap10,
                  Expanded(child: BuildShimmerItem(height: 85.spMin))
                ],
              ),
            ),
            Padding(
              padding: Dimens.paddingAll8PX,
              child: Row(
                children: [
                  Expanded(
                    child: BuildShimmerItem(
                      height: 35.h,
                      borderRadius: Dimens.borderRadius20PX,
                    ),
                  ),
                  Expanded(
                    child: BuildShimmerItem(
                      height: 35.h,
                      borderRadius: Dimens.borderRadius20PX,
                      margin: Dimens.paddingHorizontal5PX,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Dimens.paddingVertical5PX,
              child: Row(
                children: [
                  Expanded(child: BuildShimmerItem(height: 90.spMin)),
                  Gaps.hGap10,
                  Expanded(child: BuildShimmerItem(height: 90.spMin)),
                  Gaps.hGap10,
                  Expanded(child: BuildShimmerItem(height: 90.spMin))
                ],
              ),
            ),
            BuildShimmerItem(
              height: 20.h,
              width: 150.w,
              margin: Dimens.paddingVertical10PX,
            ),
            Row(
              children: List.generate(
                2,
                (index) => Expanded(
                  child: BuildShimmerItem(
                    height: 80.spMin,
                    margin: Dimens.paddingHorizontal5PX,
                  ),
                ),
              ),
            ),
            BuildShimmerItem(
              height: 20.h,
              width: 150.w,
              margin: Dimens.paddingVertical10PX,
            ),
            Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: BuildShimmerItem(
                    height: 100.spMin,
                    margin: Dimens.paddingHorizontal5PX,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
