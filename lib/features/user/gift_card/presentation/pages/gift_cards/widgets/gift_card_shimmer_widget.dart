import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';

class GiftCardShimmerWidget extends StatelessWidget {
  final bool isMyGiftCard;
  
  const GiftCardShimmerWidget({
    super.key, 
    required this.isMyGiftCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: CustomDecoration(radius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gift card image shimmer
              BuildShimmerItem(
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: context.colors.offWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Gaps.hGap15,
              // Content shimmer
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Save text shimmer
                    Row(
                      children: [
                        const BuildShimmerItem(
                          height: 14,
                          width: 40,
                        ),
                        Gaps.hGap4,
                        const BuildShimmerItem(
                          height: 14,
                          width: 30,
                        ),
                        Gaps.hGap4,
                        const BuildShimmerItem(
                          height: 14,
                          width: 80,
                        ),
                      ],
                    ),
                    Gaps.vGap8,
                    // Price row shimmer
                    if (!isMyGiftCard) ...[
                      Row(
                        children: [
                          const BuildShimmerItem(
                            height: 16,
                            width: 60,
                          ),
                          Gaps.hGap8,
                          const BuildShimmerItem(
                            height: 22,
                            width: 100,
                          ),
                        ],
                      ),
                      Gaps.vGap8,
                    ] else ...[
                      const BuildShimmerItem(
                        height: 22,
                        width: 100,
                      ),
                      Gaps.vGap8,
                    ],
                    // Get purchases text shimmer
                    Row(
                      children: [
                        const BuildShimmerItem(
                          height: 12,
                          width: 120,
                        ),
                        Gaps.hGap2,
                        const BuildShimmerItem(
                          height: 12,
                          width: 80,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Bottom section shimmer (only for non-my-gift-card)
          if (isMyGiftCard) ...[
            Gaps.vGap17,
            BuildShimmerItem(
              child: Container(
                height: 1,
                color: context.colors.textColor,
              ),
            ),
            Gaps.vGap17,
            const BuildShimmerItem(
              height: 12,
              width: 100,
            ),
          ],
        ],
      ),
    );
  }
}

