import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';

class MembershipItemShimmerWidget extends StatelessWidget {
  const MembershipItemShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsetsDirectional.only(
          start: 22, end: 15, top: 15, bottom: 13),
      decoration: CustomDecoration(
        radius: BorderRadius.circular(12),
      ).copyWith(
        border: Border.all(color: context.colors.borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BuildShimmerItem(
                height: 14,
                width: 120,
              ),
              BuildShimmerItem(
                height: 20,
                width: 20,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ],
          ),
          Gaps.vGap12,
          Row(
            children: [
              const BuildShimmerItem(
                height: 22,
                width: 80,
              ),
              Gaps.hGap8,
              const BuildShimmerItem(
                height: 22,
                width: 60,
              ),
            ],
          ),
          Gaps.vGap6,
          const BuildShimmerItem(
            height: 12,
            width: 70,
          ),
          Gaps.vGap8,
          Column(
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    const BuildShimmerItem(
                      height: 5,
                      width: 5,
                    ),
                    Gaps.hGap10,
                    const BuildShimmerItem(
                      height: 12,
                      width: 120,
                    ),
                  ],
                ),
              );
            }),
          ),
          Gaps.vGap15,
          Divider(color: context.colors.textColor),
          Gaps.vGap15,
          const BuildShimmerItem(
            height: 12,
            width: 100,
          ),
        ],
      ),
    );
  }
}
