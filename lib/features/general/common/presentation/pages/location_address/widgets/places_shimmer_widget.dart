part of 'LocationWidgetsImports.dart';

class PlacesShimmerWidget extends StatelessWidget {
  const PlacesShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          children: List.generate(
            5,
            (index) {
              return Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: context.colors.background,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    BuildShimmerItem(
                      width: 60,
                      height: 60,
                      borderRadius: Dimens.borderRadius40PX,
                    ),
                    Gaps.hGap12,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const BuildShimmerItem(
                            width: 150,
                            height: 20,
                          ),
                          Gaps.vGap4,
                          const BuildShimmerItem(
                            width: 150,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    BuildShimmerItem(
                      child: Icon(
                        Icons.chevron_right,
                        color: context.colors.greyWhite,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
