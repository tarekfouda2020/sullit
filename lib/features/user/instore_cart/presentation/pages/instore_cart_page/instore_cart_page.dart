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
        title: tr('inStoreShopping'),
        actions: [
          IconButton(
            onPressed: ()=>controller.scanProduct(context),
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
            return InstoreCartItemsWidget(
              controller: controller,
              cartItems: state.data,
            );
          }
          return const Center(child: CircularProgressIndicator());
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
            child: DefaultButton(
              title: tr('continue'),
              margin: Dimens.paddingAll15PX,
              onTap: () => controller.routeToCheckout(context),
            ),
          );
        },
      ),
    );
  }
}
