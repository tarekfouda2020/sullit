part of 'imports.dart';

class ProductDetailsSheet extends StatelessWidget {
  final ScannerController controller;

  const ProductDetailsSheet({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      margin: const EdgeInsets.only(top: kToolbarHeight+20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        spacing: 10,
        children: [
          const BottomSheetHeaderWidget(title: "Added Items"),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.refreshBloc,
            builder: (context, _) {
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.sheetItems.length,
                  itemBuilder: (context, index) {
                    var item = controller.sheetItems[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: Dimens.borderRadius30PX,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: context.colors.grey.withOpacity(0.2)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedImage(
                                  url: item.image,
                                  width: 56,
                                  height: 56,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Gaps.hGap12,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(height: 1.5),
                                    ),
                                    Gaps.vGap8,
                                    RatingBar.builder(
                                      initialRating: 0.0,
                                      ignoreGestures: true,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 10.sp,
                                      unratedColor: context.colors.disableGray,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    Gaps.vGap8,
                                    DirhamPrice(
                                      amount: item.price.toStringAsFixed(2),
                                      currencyStyle: AppTextStyle.s14_w400(
                                        color: context.colors.primary,
                                      ),
                                      textStyle: AppTextStyle.s14_w600(
                                        color: context.colors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gaps.hGap8,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CounterItemWidget(
                                    icon: Icons.remove,
                                    onTap: () => controller.updateItemQty(item.variantId, item.qnt - 1),
                                  ),
                                  Gaps.hGap8,
                                  Text(
                                    item.qnt.toString(),
                                    style: AppTextStyle.s18_w600(color: context.colors.black),
                                  ),
                                  Gaps.hGap8,
                                  CounterItemWidget(
                                    icon: Icons.add,
                                    onTap: () => controller.updateItemQty(item.variantId, item.qnt + 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Gaps.vGap10,
                      ],
                    ),
                  );
                },),
              );
            },
          ),
          DefaultButton(
            title: 'Add To Cart',
            color: context.colors.primary,
            textColor: context.colors.white,
            onTap: () => controller.closeSheet(context),
          ),
          Gaps.empty,
        ],
      ),
    );
  }
}
