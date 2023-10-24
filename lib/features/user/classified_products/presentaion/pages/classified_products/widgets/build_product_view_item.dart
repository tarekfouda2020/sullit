part of 'classified_products_w_imports.dart';

class BuildProductViewItem extends StatelessWidget {
  final CusProduct model;
  final ClassifiesProductsController controller;

  const BuildProductViewItem({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      width: MediaQuery.of(context).size.width,
      padding: Dimens.paddingAll15PX,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.name,
                style: AppTextStyle.s14_w800(color: context.colors.black),
              ),
              const Spacer(),
              Text(
                model.adminStatus,
                style: AppTextStyle.s12_w400(color: context.colors.blue),
              ),
              Switch(
                value: model.availableStatus,
                onChanged: (value) => controller.onChangeStatus(model),
                activeColor: context.colors.primary,
                inactiveThumbColor: context.colors.grey,
                inactiveTrackColor: context.colors.greyWhite,
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                model.unitPrice,
                style: AppTextStyle.s14_w800(color: context.colors.black),
              ),
              const Spacer(),
              InkWell(
                onTap: () => controller.onEditProduct(context, model),
                child: Icon(
                  Icons.edit_outlined,
                  color: context.colors.grey,
                  size: Dimens.dp20.sp,
                ),
              ),
              Gaps.hGap22,
              InkWell(
                onTap: () => controller.onRemoveProduct(model),
                child: Icon(
                  Icons.delete_outline,
                  color: context.colors.primary,
                  size: Dimens.dp20.sp,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
