part of 'home_main_widgets_imports.dart';

class BuildHomeMainOffersShimmerWidget extends StatelessWidget {
  const BuildHomeMainOffersShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildHeaderTitleShimmerWidget(),
          Gaps.vGap8,
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const BuildProductItemShimmer(
                  margin: EdgeInsetsDirectional.only(end: 8),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
