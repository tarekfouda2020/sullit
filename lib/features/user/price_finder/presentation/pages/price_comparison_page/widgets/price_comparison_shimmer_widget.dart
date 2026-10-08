part of 'widgets_imports.dart';

class PriceComparisonShimmerWidget extends StatelessWidget {
  const PriceComparisonShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildShimmerItem(
              width: 150,
              height: 18,
              borderRadius: BorderRadius.circular(6),
            ),
            Gaps.vGap6,
            Row(
              children: [
                BuildShimmerItem(
                  width: 150,
                  height: 13,
                  borderRadius: BorderRadius.circular(5),
                ),
                Gaps.hGap5,
                BuildShimmerItem(
                  width: 100,
                  height: 13,
                  borderRadius: BorderRadius.circular(5),
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap16,
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              BuildShimmerItem(
                width: 70,
                height: 70,
                borderRadius: BorderRadius.circular(12),
              ),
              Gaps.hGap12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildShimmerItem(
                      width: double.infinity,
                      height: 16,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    Gaps.vGap8,
                    BuildShimmerItem(
                      width: 90,
                      height: 13,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    Gaps.vGap6,
                    BuildShimmerItem(
                      width: 110,
                      height: 13,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap14,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: BuildShimmerItem(
                      width: double.infinity,
                      height: 26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Gaps.hGap8,
                  BuildShimmerItem(
                    width: 80,
                    height: 26,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ],
              ),
              Gaps.vGap14,
              BuildShimmerItem(
                width: 100,
                height: 12,
                borderRadius: BorderRadius.circular(5),
              ),
              Gaps.vGap8,
              Row(
                children: [
                  BuildShimmerItem(
                    width: 85,
                    height: 30,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  const Spacer(),
                  BuildShimmerItem(
                    width: 100,
                    height: 38,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ],
              ),
              Gaps.vGap14,
              Container(
                width: double.infinity,
                height: 1,
                color: context.colors.white.withValues(
                  alpha: 0.08,
                ),
              ),
              Gaps.vGap12,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildShimmerItem(
                          width: 70,
                          height: 11,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        Gaps.vGap6,
                        BuildShimmerItem(
                          width: 140,
                          height: 15,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ],
                    ),
                  ),
                  Gaps.hGap10,
                  BuildShimmerItem(
                    width: 85,
                    height: 38,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ],
              ),
            ],
          ),
        ),
        Gaps.vGap14,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildShimmerItem(
              width: 140,
              height: 18,
              borderRadius: BorderRadius.circular(6),
            ),
            Gaps.vGap6,
            Row(
              children: [
                BuildShimmerItem(
                  width: 100,
                  height: 13,
                  borderRadius: BorderRadius.circular(5),
                ),
                Gaps.hGap5,
                BuildShimmerItem(
                  width: 110,
                  height: 13,
                  borderRadius: BorderRadius.circular(5),
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap14,
        ...List.generate(
          3,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    BuildShimmerItem(
                      width: 48,
                      height: 48,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    Gaps.hGap10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BuildShimmerItem(
                            width: 120,
                            height: 15,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          Gaps.vGap6,
                          BuildShimmerItem(
                            width: 80,
                            height: 12,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ],
                      ),
                    ),
                    Gaps.hGap8,
                    BuildShimmerItem(
                      width: 55,
                      height: 18,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
