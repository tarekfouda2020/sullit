part of 'imports.dart';

class PopularSearchesShimmerWidget extends StatelessWidget {
  const PopularSearchesShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 7,
      runSpacing: 8,
      children: List.generate(4, (index) {
        return BuildShimmerItem(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: context.colors.borderColor),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                BuildShimmerItem(width: 90, height: 14),
                BuildShimmerItem(width: 60, height: 12),
              ],
            ),
          ),
        );
      },),
    );
  }
}
