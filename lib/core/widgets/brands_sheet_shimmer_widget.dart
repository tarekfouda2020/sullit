import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';

class BrandsSheetShimmerWidget extends StatelessWidget {
  const BrandsSheetShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: context.colors.borderColor)),
      child: Row(
        children: [
          const BuildShimmerItem(
            width: 30,
            height: 30,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          Gaps.hGap10,
          const BuildShimmerItem(
            width: 150,
            height: 10,
          )
        ],
      ),
    );
  }
}
