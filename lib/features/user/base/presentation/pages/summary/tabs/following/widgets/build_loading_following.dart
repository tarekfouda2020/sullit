part of 'following_w_imports.dart';

class BuildLoadingFollowing extends StatelessWidget {
  const BuildLoadingFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: Dimens.standardPadding,
      itemCount: 3,
      itemBuilder: (_, index) => Container(
        decoration: const CustomDecoration(),
        padding: Dimens.paddingAll10PX,
        margin: Dimens.paddingVertical5PX,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildShimmerItem(
                  width: Dimens.dp55,
                  height: Dimens.dp55,
                  borderRadius: Dimens.borderRadius40PX,
                ),
                Expanded(
                  child: BuildShimmerItem(
                    height: 10.h,
                    margin: Dimens.paddingHorizontal10PX,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BuildShimmerItem(
                    height: 35.h,
                    borderRadius: Dimens.borderRadius5PX,
                  ),
                ),
              ],
            ),
            BuildShimmerItem(height: Dimens.dp40.h, width: double.infinity),
          ],
        ),
      ),
    );
  }
}
