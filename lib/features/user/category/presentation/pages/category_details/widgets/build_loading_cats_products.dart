part of 'category_details_widgets_imports.dart';

class BuildLoadingCatsProducts extends StatelessWidget {
  const BuildLoadingCatsProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15.r,
          mainAxisSpacing: 15.r,
          crossAxisCount: 2,
          childAspectRatio: .71,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const BuildProductItemShimmer();
        },
      ),
    );
  }
}
