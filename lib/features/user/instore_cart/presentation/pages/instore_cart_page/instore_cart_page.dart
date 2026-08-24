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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            color: context.colors.white,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: SizedBox(
                    height: 50,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: AutoRouter.of(context).pop,
                            child: Icon(
                              Icons.arrow_back,
                              color: context.colors.black,
                            ),
                          ),
                        ),

                        Text(
                          tr('instoreCart'),
                          style: AppTextStyle.s20_w700(
                            color: context.colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gaps.vGap15,
                Gaps.line(context.colors.gray3, 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      CachedImage(
                        url: "",
                        borderRadius: BorderRadius.circular(30),
                        height: 36,
                        width: 36,
                        fit: BoxFit.fill,
                      ),
                      Gaps.hGap9,
                      Text("Munch Corner",style: AppTextStyle.s16_w600(color: context.colors.black),),
                      const Spacer(),
                      IconButton(
                        onPressed: () => controller.scanProduct(context),
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
            child: BlocBuilder<GenericBloc<List<InstoreCartItemModel>>,
                GenericState<List<InstoreCartItemModel>>>(
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
      bottomNavigationBar: BlocBuilder<GenericBloc<List<InstoreCartItemModel>>,
          GenericState<List<InstoreCartItemModel>>>(
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
                      amount:total.toString(),
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
