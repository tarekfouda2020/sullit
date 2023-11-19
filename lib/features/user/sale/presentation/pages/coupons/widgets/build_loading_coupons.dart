part of 'coupons_widgets_imports.dart';

class BuildLoadingCoupons extends StatelessWidget {
  const BuildLoadingCoupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .71,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: const CustomDecoration(),
              child: Column(
                children: [
                  BuildShimmerItem(
                    height: 90.h,
                    margin: EdgeInsets.zero,
                  ),
                  Padding(
                    padding: Dimens.paddingAll15PX,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BuildShimmerItem(
                          height: 15.h,
                          width: 50.w,
                          margin: Dimens.paddingHorizontal10PX,
                        ),
                        BuildShimmerItem(height: 15.h, width: 40.w),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
