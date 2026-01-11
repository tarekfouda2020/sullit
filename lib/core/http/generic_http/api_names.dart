// ignore_for_file: constant_identifier_names

class ApiNames {
  ///staging
  static const String baseUrl = "https://staging.mushrifcoop.com/api/v3/";

  ///production
  // static const String baseUrl = "https://mushrifcoop.com/api/v3/";

  static const String iqUrl = "https://us1.locationiq.com/v1/";


  // auth routes
  static const String login = "login";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";
  static const String register = "register";
  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "password/forgot";
  static const String resetPassword = "password/reset";
  static const String resendPasswordCode = "password/forgot-resend-code";
  static const String resendRegisterCode = "email/resend-code";
  static const String logout = "logout";
  static const String verifyPhone = "verification-phone/verify-phone";
  static const String resendVerifyCode = "verification-phone/resend-code";

  static const String codeVerify = "check-activation-code";
  static const String deleteAccount = "delete-account";
  static const String verifyEmail = "email/verify";
  static const String changePassword = "update-password?_method=patch";

  // profile urls
  static const String updateProfile = "profile/update?_method=put";
  static const String updateProfileEmail = "new-email";
  static const String getProfile = "profile";

//home urls
  static const String getFollowing = "shops/followings";

  //products urls
  static const String getHome = "home";
  static const String getProductDetails = "products";
  static const String getPopularProducts = "mostpopulars";

  static String toggleWishlist(int id) => "products/$id/wishlist/toggle";

  static String toggleFollowing(int id) => "shops/$id/follow";

  static const String sendQuery = "product-queries";

  static String getVariantPrice(int id) => "products/$id/variant/price";

  static String skuSearch(String sku) =>
      "products/search-by-barcode?barcode=$sku";

  static const String getDownloadProducts = "orders/digital-purchase-history";

  static String shopProducts(int id) => "shops/$id/all-products";

  static String getProductSections(int page) => "sections?page=$page";

  static String downloadDigitalProduct(int id) =>
      "orders/digital-purchase-history/$id/download-product";

  //dashboard urls
  static const String getDashboard = "dashboard";

  // categories urls
  static const String getCategories = "categories";

  static String getSideSubCats(int id) => "categories/$id";

  static const String getBrands = "brands";
  static const String brandDetails = "brands/";
  static const String getCategoryProducts = "search";

  //search urls
  static const String getSearchResult = "live-search";

  // blogs
  static const String blogs = "blogs";

  // addresses
  static const String userAddresses = "user/addresses";
  static const String addUserAddress = "user/addresses/create";
  static const String countries = "countries";
  static const String states = "states";
  static const String cities = "cities";
  static const String addressTypes = "address-types";

  static String setDefaultAddress(int id) =>
      "user/addresses/$id/set-default?_method=put";

  static String deleteAddress(int id) => "user/addresses/$id/delete";

  static String editAddress(int id) => "user/addresses/$id/update?_method=put";

  // sale urls
  static const String getAllFlashSale = "flash-deals";
  static const String getSaleDetails = "flash-deal-products/";
  static const String getCoupons = "exclusive-coupons";
  static const String getNewArrival = "offers/new-arrival";
  static const String getOnSale = "offers/on-sale";
  static const String vipProducts = "offers/vip-products";
  static const String getBestRated = "offers/best-rated";
  static const String shareholderProducts = "offers/shareholder-products";

  //wallet urls
  static const String getMyWallet = "my-wallet";
  static const String getWalletTypes = "recharge-wallet-payment-types";
  static const String rechargeWallet = "recharge-wallet";
  static const String walletTransactions = "wallet/transactions";

  // general
  static const String terms = "terms";
  static const String privacyPolicy = "privacy-policy";
  static const String contactUs = "contact-us";
  static const String contactUsSocials = "socials";
  static const String supportPolicy = "support-policy";
  static const String returnPolicy = "return-policy";
  static const String getContactUs = "settings/contact-data";
  static const String getSupportMsg = "room";
  static const String sendSupportMsg = "room/send-message";
  static const String feesMechanism = "fees-mechanism";

  // items routes
  static const String ITEMS = "Items";
  static const String FEATURED_ITEMS = "$ITEMS + /Featured";
  static const String REFRESH_TOKEN = "RefreshToken";

  // wishlist
  static const String wishlist = "wishlists";

  //cart
  static const String cart = "cart";
  static const String addCartAddress = "cart/add-address";
  static const String cartStoreShipping = "cart/store-shipping-info";
  static const String applyCoupon = "cart/apply-coupon";
  static const String storeOrders = "orders/store";
  static const String storeProductToCart = "cart/store";
  static const String cartShippingInfo = "cart/shipping-info";
  static const String getCombinedOrder = "combined-order/";
  static const String applyLoyaltyPoints = "cart/apply-loyalty-points";
  static const String removeLoyaltyPoints = "cart/remove-loyalty-points";
  static const String applyGiftCard = "cart/apply-gift-card";
  static const String clearCart = "cart/clear";
  static const String removeCoupon = "cart/remove-coupon";
  static const String deliveryInstructions = "delivery-instructions";

  // notifications
  static const String notifications = "notifications";

  ///general
  static const String getLanguages = "settings/languages";

  //tickets
  static const String createTicket = "tickets/store";
  static const String tickets = "tickets";

  static String ticketDetails(int id) => "tickets/$id/show";

  static String addTicketReply(int id) => "tickets/$id/replies/store";

  //PurchaseHistory
  static const String getPurchaseHistory = "orders/purchase-history";
  static const String getReturnOrders = "orders/return-orders";
  static const String orderPaymentOptions = "orders/payment-options";

  static String changeOrderPayMethod(int id) => "orders/$id/change-pay";

  static String getTrackOrder(String code) => "orders/$code/track-your-order";

  static String downloadInvoice(int id) => "orders/$id/download-invoice";

  static String getOrderDetails(int id) => "orders/$id/show";

  static String sendReview(int orderId) => "orders/$orderId/product-review";

  static String cancelOrder(int orderId) => "orders/$orderId/cancel-order";

  static String reOrder(int orderId) => "orders/$orderId/reorder";

  static String trackingHistory(int orderId) =>
      "orders/$orderId/tracking-history";

  static String returnOrder(int orderId) =>
      "orders/$orderId/store-return-order";

  static String payOrder(int orderId) => "orders/$orderId/pay-order";

  //Classified Products
  static const String getUploadedFiles = "uploaded-files";
  static const String uploadFile = "uploade-file";
  static const String uploadFiles = "uploade-files";
  static const String videoProviders = "video-providers";
  static const String customersProducts = "user/customer-products";
  static const String cusProductsBrands = "user/customer-products-brands";
  static const String cusProductsCats = "user/customer-products-categories";
  static const String classifiedProducts = "user/customer-products";
  static const String loyaltyPointsBalance = "loyalty-points/balance";

  static String changeStatus(int id) =>
      "user/customer-products/$id/switch-available-status";

  static String deleteProduct(int id) => "user/customer-products/$id";

  static String getClassifiedProduct(int param) =>
      "user/customer-products/$param?lang=sa";

  static String editClassifiedProduct(int param) =>
      "user/customer-products/$param?_method=put";
  static String getPackages = 'customer-packages';
  static String paymentOptions = 'customer-packages/payment-options/list';

  static String purchasePackage(int param) =>
      'customer-packages/$param/purchase';

  //Customers Products
  static const String getCustomersProducts = "customer-products";
  static const String getCustomersProductsDetails = "customer-products";

  /// giftCards
  static const String paymentMethods = "gift-cards/payment-methods";

  static const String giftCardSubscriptions = "gift-card-subscriptions";

  static const String giftCards = "gift-cards";

  static const String loyaltyPointsTransactions = "loyalty-points/transactions";

  static String giftCardSubscriptionDetails(int params) =>
      "gift-card-subscriptions/$params";

  static String giftCardDetails(int params) => "gift-cards/$params";

  static String payGiftCardSubscribe(int params) =>
      "gift-cards/$params/subscribe";

  /// vip subscriptions
  static const String subscriptionsPaymentMethods =
      "subscriptions/payment-methods";

  static const String subscriptions = "subscriptions";

  static const String currentSubscription = "subscriptions/current";

  static String paySubscription(int param) => "subscriptions/$param/subscribe";

  static const String subscriptionPage = "subscription-page";

  /// location

  static  const String locationAutoComplete = "autocomplete";

  static  const String locationAddress = "reverse";

}
