part of 'search_widgets_imports.dart';

class BuildLoadingSuggestions extends StatelessWidget {
  const BuildLoadingSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BuildShimmerItem(height: 40.h),
        ...List.generate(
          3,
          (index) =>
              BuildShimmerItem(height: 20.h, margin: Dimens.standardPadding),
        ),
        BuildShimmerItem(height: 40.h),
        ...List.generate(
          3,
          (index) => Container(
            margin: Dimens.cardMargin,
            padding: Dimens.paddingVertical8PX,
            decoration: CustomDecoration(),
            child: ListTile(
              leading: BuildShimmerItem(
                height: 65.r,
                width: 65.r,
              ),
              title: BuildShimmerItem(
                height: 20.h,
                margin: Dimens.paddingVertical5PX,
              ),
              subtitle: BuildShimmerItem(
                height: 20.h,
                margin: Dimens.paddingVertical5PX,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
