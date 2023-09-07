part of 'blogs_w_imports.dart';

class BuildLoadingView extends StatelessWidget {
  const BuildLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        5,
        (index) => Container(
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          padding: Dimens.paddingAll15PX,
          child: Row(
            children: [
              BuildShimmerItem(
                child: CachedImage(
                  url: "",
                  width: 100.w,
                  height: 100.h,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Gaps.hGap12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerItem(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerItem(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerItem(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerItem(
                      width: 100,
                      height: 5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
