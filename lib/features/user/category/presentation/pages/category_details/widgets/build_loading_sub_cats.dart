part of 'category_details_widgets_imports.dart';

class BuildLoadingSubCats extends StatelessWidget {
  const BuildLoadingSubCats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: Dimens.paddingAll5PX,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (_, index) {
          return BuildShimmerItem(
            height: 35.h,
            margin: Dimens.paddingHorizontal5PX,
            width: 35.w,
          );
        },
      ),
    );
  }
}
