
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';

class PharamacyHeaderShimmerWidget extends StatelessWidget {
  const PharamacyHeaderShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.colors.white,
      pinned: true,
      elevation: 0,
      automaticallyImplyLeading: true,
      leading: const BackButton(color: Colors.black),
      title: const BuildShimmerItem(
        width: 120,
        height: 20,
      ),
      expandedHeight: 440,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top + kToolbarHeight,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: CustomDecoration(
                  radius: Dimens.borderRadius12PX,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BuildShimmerItem(
                      height: 150,
                      width: double.infinity,
                      borderRadius: Dimens.topRadius12Px,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.bottomRadius12Px,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const BuildShimmerItem(
                            width: 150,
                            height: 18,
                          ),
                          Gaps.vGap8,
                          Row(
                            children: [
                              const BuildShimmerItem(
                                width: 90,
                                height: 15,
                              ),
                              Gaps.hGap8,
                              const BuildShimmerItem(
                                width: 30,
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.vGap20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildShimmerItem(
                        width: 180,
                        height: 16,
                      ),
                      BuildShimmerItem(
                        width: 50,
                        height: 14,
                      ),
                    ],
                  ),
                  Gaps.vGap12,
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => BuildShimmerItem(
                        width: 100,
                        height: 60,
                        borderRadius: Dimens.borderRadius8PX,
                      ),
                      separatorBuilder: (context, index) => Gaps.hGap10,
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
