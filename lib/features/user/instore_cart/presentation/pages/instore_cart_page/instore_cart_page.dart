part of 'instore_cart_page_imports.dart';

class InstoreCartPage extends StatefulWidget {
  const InstoreCartPage({super.key});

  @override
  State<InstoreCartPage> createState() => _InstoreCartPageState();
}

class _InstoreCartPageState extends State<InstoreCartPage> {
  final InstoreCartPageController controller = InstoreCartPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        bgColor: context.colors.white,
        title: tr('instoreCart'),
      ),
      body: Column(
        children: [
          Container(
            color: context.colors.white,
            child: Column(
              children: [
                Gaps.line(context.colors.gray3, 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: Icon(
                          Icons.store,
                          color: context.colors.white,
                        ),
                      ),
                      Gaps.hGap9,
                      Text(
                        "Munch Corner",
                        style: AppTextStyle.s16_w600(color: context.colors.black),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          final result = await AutoRouter.of(context).push(
                            const ScannerPageRoute(),
                          );
                          if (!context.mounted || result == null) return;
                          if (result is String) {
                            controller.getProductWithSku(context, result);
                          }
                          else if (result is List<InstoreCartItemModel>) {
                            controller.syncLocalCart();
                          }
                        },
                        icon: SvgPicture.asset(
                          Res.qrScanIcon,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Gaps.vGap24,
          Expanded(
            child: BlocBuilder<GenericBloc<List<InstoreCartItemModel>>, GenericState<List<InstoreCartItemModel>>>(
              bloc: controller.cartItemsBloc,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 12,
                    children: [
                      ClearAllButtonWidget(controller: controller),
                      Expanded(
                        child: InstoreCartItemsWidget(
                          controller: controller,
                          cartItems: state.data,
                        ),
                      ),
                    ],
                  );
                }
                return const Center(child: CircularProgressIndicator.adaptive());
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BlocBuilder<GenericBloc<List<InstoreCartItemModel>>, GenericState<List<InstoreCartItemModel>>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is! GenericUpdateState || state.data.isEmpty) {
            return const SizedBox.shrink();
          }
          final total = state.data.fold<double>(
            0,
            (sum, item) => sum + item.totalPrice,
          );
          return CustomBottomSafeAreaWidget(
            child: Row(
              children: [
                Gaps.hGap18,
                Expanded(
                  child: DefaultButton(
                    title: tr('checkout'),
                    margin: EdgeInsets.zero,
                    onTap: () => controller.routeToCheckout(context),
                  ),
                ),
                Gaps.hGap12,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr('total'),
                      style: AppTextStyle.s12_w400(
                        color: context.colors.textColor,
                      ),
                    ),
                    Gaps.vGap4,
                    DirhamPrice(
                      amount: total.toString(),
                      currencyStyle: AppTextStyle.s16_w400(
                        color: context.colors.primary,
                      ),
                      textStyle: AppTextStyle.s14_w600(
                        color: context.colors.primary,
                      ),
                    ),
                  ],
                ),
                Gaps.hGap18,
              ],
            ),
          );
        },
      ),
    );
  }
}
