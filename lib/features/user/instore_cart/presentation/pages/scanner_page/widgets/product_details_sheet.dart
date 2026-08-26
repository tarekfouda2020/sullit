part of 'imports.dart';

class ProductDetailsSheet extends StatelessWidget {
  final ScannerController controller;
  final int variantId;

  const ProductDetailsSheet({
    super.key,
    required this.controller,
    required this.variantId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.refreshBloc,
      builder: (context, _) {
        final item = controller.cartProducts.firstWhere(
          (e) => e.variantId == variantId,
          orElse: () => controller.cartProducts.first,
        );
        return Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 20),
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
                                amount: item.price.toString(),
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
                              onTap: () => controller.updateItemQty(variantId, item.qnt - 1),
                            ),
                            Gaps.hGap8,
                            Text(
                              item.qnt.toString(),
                              style: AppTextStyle.s18_w600(color: context.colors.black),
                            ),
                            Gaps.hGap8,
                            CounterItemWidget(
                              icon: Icons.add,
                              onTap: () => controller.updateItemQty(variantId, item.qnt + 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gaps.vGap16,
                  DefaultButton(
                    title: 'Add To Cart',
                    color: context.colors.primary,
                    textColor: context.colors.white,
                    onTap: () {
                      AutoRouter.of(context).pop(controller.cartProducts);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
