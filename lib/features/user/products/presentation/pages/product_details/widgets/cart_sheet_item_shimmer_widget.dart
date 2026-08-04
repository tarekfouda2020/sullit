part of 'product_details_widgets_imports.dart';

class CartSheetItemShimmerWidget extends StatelessWidget {
  const CartSheetItemShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        boxBorder: Border.all(color: context.colors.gray3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Product image shimmer
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BuildShimmerItem(
              width: 46,
              height: 46,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Gaps.hGap11,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Product name and favorite button row
                Row(
                  children: [
                    Expanded(
                      child: BuildShimmerItem(
                        height: 16,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Gaps.hGap5,
                    // Favorite button shimmer
                    BuildShimmerItem(
                      width: 20,
                      height: 20,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                ),
                Gaps.vGap5,
                // Rating stars shimmer
                Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: index < 4 ? 2.0 : 0.0),
                      child: BuildShimmerItem(
                        width: 10,
                        height: 10,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Gaps.vGap5,
                // Price text shimmer
                const BuildShimmerItem(
                  height: 16,
                  width: 80,
                ),
                Gaps.vGap6,
                // "Sold By" row shimmer
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const BuildShimmerItem(
                      height: 14,
                      width: 60,
                    ),
                    Gaps.hGap5,
                    const BuildShimmerItem(
                      height: 14,
                      width: 100,
                    ),
                  ],
                ),
                Gaps.vGap11,
                // Quantity controls shimmer
                Row(
                  children: [
                    // Minus button
                    BuildShimmerItem(
                      width: 30,
                      height: 30,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    Gaps.hGap10,
                    // Quantity text
                    const BuildShimmerItem(
                      width: 40,
                      height: 20,
                    ),
                    Gaps.hGap10,
                    // Plus button
                    BuildShimmerItem(
                      width: 30,
                      height: 30,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
