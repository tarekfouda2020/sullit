part of 'imports.dart';

class SearchResultShimmerWidget extends StatelessWidget {
  const SearchResultShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildShimmerItem(
      child: Container(
        padding: const EdgeInsetsGeometry.only(
          right: 20,
          left: 20,
          bottom: 6,
          top: 20,
        ),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.colors.borderColor,
          ),
        ),
        child: Column(
          spacing: 20,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildShimmerItem(
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: context.colors.offWhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Gaps.hGap13,
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      BuildShimmerItem(
                        width: double.infinity,
                        height: 20,
                      ),
                      BuildShimmerItem(
                        width: 100,
                        height: 16,
                      ),
                      BuildShimmerItem(
                        width: 120,
                        height: 14,
                      ),
                    ],
                  ),
                ),
                Gaps.hGap12,
                const Column(
                  spacing: 10,
                  children: [
                    BuildShimmerItem(
                      width: 35,
                      height: 14,
                    ),
                    BuildShimmerItem(
                      width: 65,
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            BuildShimmerItem(
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: context.colors.offWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
