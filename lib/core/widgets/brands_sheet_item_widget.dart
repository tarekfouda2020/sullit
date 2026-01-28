
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class BrandsSheetItemWidget extends StatelessWidget {
  final void Function() onTap;
  final bool? isSelected;
  final BrandDomainModel brandModel;
  const BrandsSheetItemWidget({super.key, required this.onTap, this.isSelected, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
            border: Border.all(
                color: isSelected ?? brandModel.isSelected
                    ?context.colors.primary
                    :context.colors.gray3
            )
        ),
        child: Row(
          children: [
            CachedImage(url: brandModel.logo,
              width: 30,
              height: 30,
              boxShape: BoxShape.circle,
              haveRadius: false,
            ),
            Gaps.hGap10,
            Text(brandModel.name,
              style: AppTextStyle.s15_w500(color:isSelected ?? brandModel.isSelected
                  ?context.colors.primary
                  :context.colors.black
              ),
            )
          ],
        ),
      ),
    );
  }
}
