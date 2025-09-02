part of 'seller_products_widgets_imports.dart';

class SellerProductsDrawerWidget extends StatelessWidget {
  final SellerProductsController controller;
  const SellerProductsDrawerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: context.colors.white,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Gaps.vGap32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr('filter'),
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    CupertinoIcons.clear,
                    color: context.colors.black,
                  ),
                )
              ],
            ),
            Gaps.line(context.colors.gray, 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomPriceRangeWidget(rangeCubit: controller.rangeCubit,),
                    Gaps.line(context.colors.gray, 15),
                    SellerBrandsWidget(controller: controller),
                    // ...List.generate(
                    //   state.data!.attributes.length,
                    //       (index) => BuildFilterItem(
                    //     categoryDetailsController:
                    //     categoryDetailsController,
                    //     attributesModel: state.data!.attributes[index],
                    //     index: index,
                    //   ),
                    // ),
                    // BuildColorFilter(
                    //     subCategoryModel: state.data!,
                    //     categoryDetailsController:
                    //         categoryDetailsController),
                  ],
                ),
              ),
            ),
            Gaps.vGap12,
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DefaultButton(
                    height: 35.h,
                    title: tr('confirm'),
                    margin: EdgeInsets.zero,
                    onTap: () => controller.confirmFilter(context),
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius30PX,
                    textColor: context.colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,

                  ),
                ),
                Gaps.hGap5,
                Expanded(
                  child: GestureDetector(
                    onTap: ()=> controller.resetFilter(context),
                    child: Text(tr('reset',
                    ),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s18_w700(color: context.colors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
