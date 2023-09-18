import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';

class BuildCustomerProductItem extends StatelessWidget {
  final CustomerProduct productModel;

  const BuildCustomerProductItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: CustomDecoration(),
      child: InkWell(
        onTap: () => AutoRouter.of(context)
            .push(CustomerProductDetailsRoute(id: productModel.id)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  CachedImage(
                    fit: BoxFit.fill,
                    haveRadius: true,
                    borderRadius: Dimens.borderRadius5PX,
                    url: productModel.thumbnailImg,
                  ),
                  PositionedDirectional(
                    top: 10.r,
                    start: 5.r,
                    child: Container(
                      padding: Dimens.paddingAll5PX,
                      decoration: BoxDecoration(
                        color: context.colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: Dimens.borderRadius5PX,
                      ),
                      child: Text(
                        productModel.condition,
                        style: AppTextStyle.s10_w500(
                          color: context.colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Dimens.paddingAll10PX,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.unitPrice,
                    style: AppTextStyle.s14_w500(
                      color: context.colors.primary,
                    ),
                  ),
                  Gaps.vGap3,
                  Text(
                    productModel.name,
                    style: AppTextStyle.s13_w500(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
