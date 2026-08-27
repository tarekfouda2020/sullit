part of 'instore_cart_page_imports.dart';

class InstoreCartPageController {
  final GenericBloc<List<InstoreCartItemModel>> cartItemsBloc = GenericBloc([]);

  InstoreCartPageController() {
    syncLocalCart();
  }

  void syncLocalCart() {
    List<InstoreCartItemModel> items = InstoreCartHelper.instance.getCartItems();
    cartItemsBloc.onUpdateData(items);
  }

  Future<void> routeToCheckout(BuildContext context) async {
   if(context.isAuth == false){
     CustomToast.showAuthDialog(context);
     return ;
   }
    await AutoRouter.of(context).push(const InstoreCheckoutRoute());
    syncLocalCart();
  }

  Future<void> scanProduct(BuildContext context) async {
    var barcode = await getIt<BarcodeService>().scanBarcode(context);
    if (!context.mounted) return;
    if (barcode?.isNotEmpty == true && barcode != null && barcode != "-1") {
    // if (true) {
    //   var barcode = '6223001930044';
      CustomToast.showSnakeBar(
        tr('productScannedWithCode').replaceAll('{code}', barcode),
        type: ToastType.success,
      );

      // var code = '21670';
      await getProductWithSku(context, barcode);

    }
  }

  Future<void> getProductWithSku(BuildContext context, String sku) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final value = await GetSkuProduct().call(sku);
    getIt<LoadingHelper>().dismissDialog();
    if (!context.mounted) return;
    if (value != null) {
      await addNewItem(context, value);
    } else {
      CustomToast.showSnakeBar(
        tr('productNotFound'),
        type: ToastType.error,
      );
    }
  }

  Future<void> addNewItem(
    BuildContext context,
    ProductDetailsDomainModel value,
  ) async {
    final product = value.product;
    final haveManyVariants =
        product.isMultiple == true && (product.variants?.isNotEmpty ?? false);

    if (haveManyVariants) {
      await showVariantsSheet(context, value);
      return;
    }

    final variant = product.variant;
    if (variant?.id == null) return;
    await addOrUpdateItem(value, variant!);
  }

  Future<void> showVariantsSheet(
    BuildContext context,
    ProductDetailsDomainModel value,
  ) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => InstoreVariantSheetWidget(
        productDetails: value,
        onVariantSelected: (variant) async {
          Navigator.pop(context);
          await addOrUpdateItem(value, variant);
        },
      ),
    );
    syncLocalCart();
  }

  Future<void> addOrUpdateItem(
    ProductDetailsDomainModel value,
    Variant variant,
  ) async {
    final variantId = variant.id;
    if (variantId == null) return;

    await InstoreCartHelper.instance.addItemToCart(
      sellerId: value.product.sellerId!,
      sellerName: value.product.shop?.name ?? "",
      sellerImage: value.product.shop?.logo ?? "",
      item: InstoreCartItemModel(
        id: value.product.id!,
        variantId: variantId,
        qnt: 1,
        price: num.parse(variant.calculablePrice ?? '0'),
        name: (variant.name?.isNotEmpty == true
                ? variant.name
                : value.product.name) ??
            '',
        image: (variant.image?.isNotEmpty == true
                ? variant.image
                : value.product.thumbnailImage) ??
            '',
      ),
    );
    syncLocalCart();
  }

  Future<void> onIncreaseItem(InstoreCartItemModel item) async {
    await InstoreCartHelper.instance.updateItemInCart(
      item: item.copyWith(qnt: item.qnt + 1),
    );
    syncLocalCart();
  }

  Future<void> onDecreaseItem(
    BuildContext context,
    InstoreCartItemModel item,
  ) async {
    if (item.qnt <= 1) {
      showDeleteItemDialog(context, item);
      return;
    }
    await InstoreCartHelper.instance.updateItemInCart(
      item: item.copyWith(qnt: item.qnt - 1),
    );
    syncLocalCart();
  }

  void showDeleteItemDialog(BuildContext context, InstoreCartItemModel item) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return BuildDeleteDialog(
          content: tr('wantToDeleteCartItem'),
          onPressConfirm: () {
            Navigator.of(dialogContext).pop();
            _deleteItem(item);
          },
        );
      },
    );
  }

  Future<void> onDeleteItem(
    BuildContext context,
    InstoreCartItemModel item,
  ) async {
    showDeleteItemDialog(context, item);
  }

  Future<void> _deleteItem(InstoreCartItemModel item) async {
    await InstoreCartHelper.instance.deleteItemFromCart(
      variantId: item.variantId,
    );
    syncLocalCart();
  }

  void showClearCartDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return BuildDeleteDialog(
          content: tr('want_to_clear_your_cart'),
          onPressConfirm: () {
            Navigator.of(dialogContext).pop();
            clearAllCart();
          },
        );
      },
    );
  }

  Future<void> clearAllCart() async {
    await InstoreCartHelper.instance.deleteAllItemsFromCart();
    syncLocalCart();
  }

  Future<void> routeToScanPage(BuildContext context)async{
     await AutoRouter.of(context).push(
      const ScannerPageRoute(),
    );
    syncLocalCart();
  }





}
