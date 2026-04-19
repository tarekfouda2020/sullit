part of 'pharmacy_details_imports.dart';

class PharmacyDetailsController {
  final TextEditingController productSearchCtr = TextEditingController();
  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);
  
  final GenericBloc<Pharmacy?> pharmacyCubit = GenericBloc<Pharmacy?>(null);
  final GenericBloc<ShopCategory?> categoryCubit = GenericBloc<ShopCategory?>(null);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<bool> isLoadingNextPage = GenericBloc<bool>(false);

  int pageSize = 12;

  final String pharmacyName = "Al Manara Pharmacy";
  final String pharmacyLogo = "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg";
  final double pharmacyRating = 4.5;
  final List<Insurance> pharmacyInsurance = [
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
  ];
  final List<ShopCategory> pharmacyCategories = [
    ShopCategory(id: 1, name: tr("all"), icon: "", slug: ""),
    ShopCategory(id: 2, name: tr("medicines"), icon: "", slug: ""),
    ShopCategory(id: 3, name: tr("health_care"), icon: "", slug: ""),
  ];

  GenericBloc<CartDomainModel> get cartItemsBloc => getIt<CartHelper>().cartItemsBloc;

  PharmacyDetailsController() {
    _initPharmacyData();
    _getMockProducts(1);
  }

  void _initPharmacyData() {
    final pharmacy = Pharmacy(
      id: 1,
      name: pharmacyName,
      logo: pharmacyLogo,
      rating: pharmacyRating,
      supportedInsurance: pharmacyInsurance,
    );
    pharmacyCubit.onUpdateData(pharmacy);
  }

  void getCartData() {}

  bool cartHaveSellerProduct() {
    return false;
  }

  double neededAmount() {
    return 0.0;
  }

  Future<void> _getMockProducts(int page) async {
    final List<Product> data = List.generate(pageSize, (index) {
      return Product.fromJson({
        "id": index + 100,
        "name": index % 2 == 0 
            ? "Panadol Acute Head Cold Paracetamol Tablets" 
            : "Omega 3 Fish Oil 1000MG 100 Soft Gel",
        "unit": "Pcs",
        "max_qty": 10,
        "thumbnail_image": index % 2 == 0 
            ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-O_U-a-m8F_rXY-xX-K8YQ-C-u-q-L-Q&s"
            : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhX5O9Qf-hK_P_P7p1J-7y0z-I-v-f-v-I_A&s",
        "images": <String>[],
        "is_multiple": false,
        "price_high_low_discount": "31.50",
        "price_high_low": "35.00",
        "has_discount": true,
        "discount": "10%",
        "choice_options": [],
        "colors": [],
        "min_qty": 1,
        "currency_symbol": "AED",
        "variant": {"calculable_price": "31.50", "current_stock": 100},
        "tags": <String>[],
        "rating": 4.0,
        "sales": 100,
        "is_digital": false,
        "is_wishlist": false,
        "seller_id": 1,
        "count_reviews": 15,
        "sold_by_type": "Pharmacy",
        "sold_by_name": "Al Manara Pharmacy",
        "shop": null,
        "is_resale": false,
        "reseller_id": null,
        "description": "Mock description for pharmacy product.",
        "video_provider": "",
        "video_link": "",
        "category_name": "Health",
        "brand_name": "Generic",
        "has_vip_offer": false,
        "has_shareholder_discount": false,
        "is_out_of_stock": false,
        "added_qty_to_cart": 0,
        "is_fresh": false,
      });
    });
    pagingController.appendLastPage(data);
  }

  void onFavChanged(Product model) {}

  void onSelectCategory(ShopCategory model) {}

  void searchProducts(BuildContext context, {bool enableUnFocus = true}) {}

  void clearSearchField() {}

  void whileWriting(BuildContext context, String value) {}

  void onPressSupportedInsurance(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) => SupportedInsuranceBottomSheetWidget(
        insurance: pharmacyInsurance,
      ),
    );
  }

  void onPressViewCart(BuildContext context, bool fromCart) {
    AutoRouter.of(context).push(const PharmacyCartRoute());
  }
}
