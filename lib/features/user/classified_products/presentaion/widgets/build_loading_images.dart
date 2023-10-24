
part of  'classified_products_w_imports.dart';

class BuildLoadingImages extends StatelessWidget {
  const BuildLoadingImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      type: ListViewType.grid,
      padding: Dimens.paddingVertical10PX,
      gridItemHeight: Dimens.dp160.spMin,
      children: List.generate(
        4,
        (index) => Container(
          padding: const EdgeInsets.all(10),
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                child: CachedImage(
                  url: '',
                  height: 95.h,
                  imgMargin: EdgeInsets.only(bottom: 10.r),
                  width: 100.w,
                ),
              ),
              const BuildShimmerItem(
                height: 7,
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}
