part of 'brands_widgets_imports.dart';

class BuildBrandShimmer extends StatelessWidget {
  const BuildBrandShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.r,
          mainAxisSpacing: 15.r,
          childAspectRatio: 9 / 8,
        ),
        itemBuilder: (context, index) => BuildShimmerItem(
          child: Container(
            decoration: BoxDecoration(
              color: context.colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.colors.greyWhite,
                  blurRadius: 1,
                  spreadRadius: .5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
