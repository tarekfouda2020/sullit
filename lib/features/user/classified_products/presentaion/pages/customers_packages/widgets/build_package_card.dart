part of 'customers_packages_w_imports.dart';

class BuildPackageCard extends StatelessWidget {
  final CusPackage package;
  final CustomerPackagesController controller;

  const BuildPackageCard(
      {Key? key, required this.package, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          CachedImage(
            url: package.logo,
            height: Dimens.dp50.r,
            width: Dimens.dp50.r,
          ),
          Gaps.vGap10,
          Text(
            package.name,
            style: AppTextStyle.s12_w400(color: context.colors.black),
          ),
          Padding(
            padding: Dimens.paddingVertical10PX,
            child: Row(
              children: [
                Icon(
                  Icons.done,
                  color: Colors.green,
                  size: Dimens.dp15.sp,
                ),
                Gaps.hGap10,
                Text(
                  ' ${package.productUpload} ${tr('productUpload')}',
                  style: AppTextStyle.s13_w400(color: context.colors.black),
                ),
              ],
            ),
          ),
          Text(
            package.amount,
            style: AppTextStyle.s13_w400(color: context.colors.black),
          ),
          DefaultButton(
            title: tr('purchasePackage'),
            // height: Dimens.dp24.h,
            borderRadius: Dimens.borderRadius5PX,
            fontSize: 12,
            onTap: () => controller.showPaymentDialog(context, package),
          ),
        ],
      ),
    );
  }
}
