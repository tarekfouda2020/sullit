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
        title: tr('instoreCart'),
        actions: [
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
      body: BlocBuilder<GenericBloc<List<InstoreCartItemModel>>,
          GenericState<List<InstoreCartItemModel>>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 12,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Add More Items",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                  )
                  ],
                ),
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
      bottomNavigationBar: BlocBuilder<GenericBloc<List<InstoreCartItemModel>>,
          GenericState<List<InstoreCartItemModel>>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is! GenericUpdateState || state.data.isEmpty) {
            return const SizedBox.shrink();
          }
          return CustomBottomSafeAreaWidget(
            child: Row(
              spacing: 8,
              children: [
                Gaps.hGap5,
                Expanded(
                  child: DefaultButton(
                    title: tr('checkout'),
                    margin: EdgeInsets.zero,
                    onTap: () => controller.routeToCheckout(context),
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    title: tr('keep_shopping'),
                    margin: EdgeInsets.zero,
                    onTap: () => controller.scanProduct(context),
                  ),
                ),
                Gaps.hGap5,
              ],
            ),
          );
        },
      ),
    );
  }
}
