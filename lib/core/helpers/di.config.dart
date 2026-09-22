// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/barcode_service.dart' as _i14;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i59;
import 'package:flutter_tdd/core/helpers/get_device_id.dart' as _i63;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i68;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i69;
import 'package:flutter_tdd/core/helpers/google_signin_helper.dart' as _i70;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i78;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i79;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i85;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i95;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i117;
import 'package:flutter_tdd/core/helpers/route_helpers/guard_route_helper.dart'
    as _i10;
import 'package:flutter_tdd/core/helpers/router_helper.dart' as _i122;
import 'package:flutter_tdd/core/helpers/user_service_helper.dart' as _i135;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i136;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i55;
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart' as _i58;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i62;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i90;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i101;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i116;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i56;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i57;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i71;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i72;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i73;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i61;
import 'package:flutter_tdd/core/network/network_info.dart' as _i84;
import 'package:flutter_tdd/core/services/deep_link_service.dart' as _i54;
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart'
    as _i8;
import 'package:flutter_tdd/features/general/auth/data/data_source/impl_auth_data_source.dart'
    as _i9;
import 'package:flutter_tdd/features/general/auth/data/repository/impl_auth_repository.dart'
    as _i13;
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart'
    as _i12;
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart'
    as _i11;
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart'
    as _i42;
import 'package:flutter_tdd/features/general/common/data/data_sources/impl_common_data_sources.dart'
    as _i43;
import 'package:flutter_tdd/features/general/common/data/repository/impl_common_repository.dart'
    as _i45;
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart'
    as _i44;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart'
    as _i4;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/impl_addresses_data_sources.dart'
    as _i5;
import 'package:flutter_tdd/features/user/addresses/data/repository/impl_addresses_repository.dart'
    as _i7;
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart'
    as _i15;
import 'package:flutter_tdd/features/user/base/data/data_sources/impl_base_data_sources.dart'
    as _i16;
import 'package:flutter_tdd/features/user/base/data/repository/impl_base_repository.dart'
    as _i18;
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart'
    as _i17;
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/best_sellers_sources.dart'
    as _i21;
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/impl_best_sellers_sources.dart'
    as _i22;
import 'package:flutter_tdd/features/user/best_sellers/data/repository/impl_best_sellers_repository.dart'
    as _i20;
import 'package:flutter_tdd/features/user/best_sellers/domain/repository/best_sellers_repository.dart'
    as _i19;
import 'package:flutter_tdd/features/user/blog/data/data_sources/blog_data_sources.dart'
    as _i23;
import 'package:flutter_tdd/features/user/blog/data/data_sources/impl_blog_data_sources.dart'
    as _i24;
import 'package:flutter_tdd/features/user/blog/data/repository/impl_blog_repository.dart'
    as _i26;
import 'package:flutter_tdd/features/user/blog/domain/repository/blog_repository.dart'
    as _i25;
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart'
    as _i28;
import 'package:flutter_tdd/features/user/cart/data/data_sources/impl_cart_data_sources.dart'
    as _i29;
import 'package:flutter_tdd/features/user/cart/data/repository/impl_cart_repository.dart'
    as _i33;
import 'package:flutter_tdd/features/user/cart/domain/entities/cart_check_out_saved_data.dart'
    as _i27;
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart'
    as _i32;
import 'package:flutter_tdd/features/user/cart/presentation/manager/helpers/cart_navigate_helper.dart'
    as _i31;
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart'
    as _i34;
import 'package:flutter_tdd/features/user/category/data/data_sources/impl_category_data_sources.dart'
    as _i35;
import 'package:flutter_tdd/features/user/category/data/repository/impl_category_repository.dart'
    as _i37;
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart'
    as _i36;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/classified_products_data_sources.dart'
    as _i38;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/impl_classified_products_data_sources.dart'
    as _i39;
import 'package:flutter_tdd/features/user/classified_products/data/repository/impl_classified_products_repository.dart'
    as _i41;
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart'
    as _i40;
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart'
    as _i3;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/cus_products_data_sources.dart'
    as _i48;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/impl_cus_products_data_sources.dart'
    as _i49;
import 'package:flutter_tdd/features/user/customers_products/data/repository/impl_cus_products_repository.dart'
    as _i47;
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart'
    as _i46;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart'
    as _i50;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/impl_dashboard_data_sources.dart'
    as _i51;
import 'package:flutter_tdd/features/user/dashboard/data/repository/impl_dashboard_repository.dart'
    as _i53;
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart'
    as _i52;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/gift_cards_data_source.dart'
    as _i64;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/impl_gift_card_data_source.dart'
    as _i65;
import 'package:flutter_tdd/features/user/gift_card/data/repositories/impl_gift_card_repositories.dart'
    as _i67;
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart'
    as _i66;
import 'package:flutter_tdd/features/user/instore_cart/data/data_sources/impl_instore_cart_data_source.dart'
    as _i75;
import 'package:flutter_tdd/features/user/instore_cart/data/data_sources/instore_cart_data_source.dart'
    as _i74;
import 'package:flutter_tdd/features/user/instore_cart/data/repository/impl_instore_cart_repository.dart'
    as _i77;
import 'package:flutter_tdd/features/user/instore_cart/domain/repository/instore_cart_repository.dart'
    as _i76;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/impl_loyalty_points_data_source.dart'
    as _i81;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart'
    as _i80;
import 'package:flutter_tdd/features/user/loyalty_points/data/repositories/impl_loyalty_points_repository.dart'
    as _i83;
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart'
    as _i82;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/impl_notifications_data_sources.dart'
    as _i87;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart'
    as _i86;
import 'package:flutter_tdd/features/user/notifications/data/repository/impl_notifications_repository.dart'
    as _i89;
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart'
    as _i88;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source.dart'
    as _i91;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source_impl.dart'
    as _i92;
import 'package:flutter_tdd/features/user/payment/data/repository/payment_repository_impl.dart'
    as _i94;
import 'package:flutter_tdd/features/user/payment/domain/repository/payment_repository.dart'
    as _i93;
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/impl_pharmacies_sources.dart'
    as _i99;
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart'
    as _i98;
import 'package:flutter_tdd/features/user/pharmacies/data/repository/impl_pharmacies_repository.dart'
    as _i97;
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart'
    as _i96;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/impl_products_data_source.dart'
    as _i104;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart'
    as _i103;
import 'package:flutter_tdd/features/user/products/data/repository/impl_products_repository.dart'
    as _i107;
import 'package:flutter_tdd/features/user/products/domain/behavior/general_product_behavior.dart'
    as _i60;
import 'package:flutter_tdd/features/user/products/domain/behavior/pharmacy_product_behavior.dart'
    as _i100;
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior_registry.dart'
    as _i102;
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart'
    as _i106;
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart'
    as _i30;
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart'
    as _i105;
import 'package:flutter_tdd/features/user/profile/data/data_sources/impl_profile_data_sources.dart'
    as _i109;
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart'
    as _i108;
import 'package:flutter_tdd/features/user/profile/data/repository/impl_profile_repository.dart'
    as _i111;
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart'
    as _i110;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/impl_purchasing_data_sources.dart'
    as _i113;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart'
    as _i112;
import 'package:flutter_tdd/features/user/purchasing/data/repository/impl_purchasing_repository.dart'
    as _i115;
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart'
    as _i114;
import 'package:flutter_tdd/features/user/restaurants/data/data_sources/impl_restaurants_data_source.dart'
    as _i119;
import 'package:flutter_tdd/features/user/restaurants/data/data_sources/restaurants_data_source.dart'
    as _i118;
import 'package:flutter_tdd/features/user/restaurants/data/repository/impl_restaurants_repository.dart'
    as _i121;
import 'package:flutter_tdd/features/user/restaurants/domain/repository/restaurants_repository.dart'
    as _i120;
import 'package:flutter_tdd/features/user/sale/data/data_sources/impl_sale_data_sources.dart'
    as _i124;
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart'
    as _i123;
import 'package:flutter_tdd/features/user/sale/data/repository/impl_sale_repository.dart'
    as _i126;
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart'
    as _i125;
import 'package:flutter_tdd/features/user/search/data/data_sources/impl_search_data_sources.dart'
    as _i128;
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart'
    as _i127;
import 'package:flutter_tdd/features/user/search/data/repository/impl_search_repository.dart'
    as _i130;
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart'
    as _i129;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/impl_tickets_data_sources.dart'
    as _i132;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart'
    as _i131;
import 'package:flutter_tdd/features/user/tickets/data/repository/impl_tickets_repository.dart'
    as _i134;
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart'
    as _i133;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/impl_vip_subscribe_data_source.dart'
    as _i138;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart'
    as _i137;
import 'package:flutter_tdd/features/user/vip_subscribe/data/repositories/impl_vip_repositories.dart'
    as _i140;
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart'
    as _i139;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/impl_wallet_data_sources.dart'
    as _i142;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart'
    as _i141;
import 'package:flutter_tdd/features/user/wallet/data/repository/impl_wallet_repository.dart'
    as _i144;
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart'
    as _i143;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/impl_wishlist_data_sources.dart'
    as _i146;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart'
    as _i145;
import 'package:flutter_tdd/features/user/wishlist/data/repository/impl_wishlist_repository.dart'
    as _i148;
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart'
    as _i147;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AddImageHelper>(() => _i3.AddImageHelper());
    gh.factory<_i4.AddressesDataSources>(() => _i5.ImplAddressesDataSources());
    gh.factory<_i6.AddressesRepository>(() => _i7.ImplAddressesRepository());
    gh.factory<_i8.AuthDataSource>(() => _i9.ImplAuthDataSource());
    gh.lazySingleton<_i10.AuthGuard>(() => _i10.AuthGuard());
    gh.factory<_i11.AuthHelper>(() => _i11.AuthHelper());
    gh.factory<_i12.AuthRepository>(() => _i13.ImplAuthRepository());
    gh.lazySingleton<_i14.BarcodeService>(() => _i14.BarcodeService());
    gh.factory<_i15.BaseDataSources>(() => _i16.ImplBaseDataSources());
    gh.factory<_i17.BaseRepository>(() => _i18.ImplBaseRepository());
    gh.factory<_i19.BestSellersRepository>(
        () => _i20.ImplBestSellersRepository());
    gh.factory<_i21.BestSellersSources>(() => _i22.ImplBestSellersSources());
    gh.factory<_i23.BlogDataSources>(() => _i24.ImplBlogDataSources());
    gh.factory<_i25.BlogRepository>(() => _i26.ImplBlogRepository());
    gh.lazySingleton<_i27.CartCheckOutSavedData>(
        () => _i27.CartCheckOutSavedData());
    gh.factory<_i28.CartDataSources>(() => _i29.ImplCartDataSources());
    gh.lazySingleton<_i30.CartHelper>(() => _i30.CartHelper());
    gh.lazySingleton<_i31.CartNavigateHelper>(() => _i31.CartNavigateHelper());
    gh.factory<_i32.CartRepository>(() => _i33.ImplCartRepository());
    gh.factory<_i34.CategoryDataSources>(() => _i35.ImplCategoryDataSources());
    gh.factory<_i36.CategoryRepository>(() => _i37.ImplCategoryRepository());
    gh.factory<_i38.ClassifiedProductsDataSources>(
        () => _i39.ImplClassifiedProductsDataSources());
    gh.factory<_i40.ClassifiedProductsRepository>(
        () => _i41.ImplClassifiedProductsRepository());
    gh.factory<_i42.CommonDataSources>(() => _i43.ImplCommonDataSources());
    gh.factory<_i44.CommonRepository>(() => _i45.ImplCommonRepository());
    gh.factory<_i46.CusProductRepository>(
        () => _i47.ImplCusProductsRepository());
    gh.factory<_i48.CusProductsDataSources>(
        () => _i49.ImplCusProductsDataSources());
    gh.factory<_i50.DashboardDataSources>(
        () => _i51.ImplDashboardDataSources());
    gh.factory<_i52.DashboardRepository>(() => _i53.ImplDashboardRepository());
    gh.singleton<_i54.DeepLinkService>(_i54.DeepLinkService());
    gh.lazySingleton<_i55.Delete>(() => _i55.Delete());
    gh.lazySingleton<_i56.DioHeader>(() => _i56.DioHeader());
    gh.lazySingleton<_i57.DioOptions>(() => _i57.DioOptions());
    gh.lazySingleton<_i58.Download>(() => _i58.Download());
    gh.lazySingleton<_i59.FirebaseAnalyticsHelper>(
        () => _i59.FirebaseAnalyticsHelper());
    gh.factory<_i60.GeneralProductBehavior>(
        () => _i60.GeneralProductBehavior());
    gh.lazySingleton<_i61.GenericHttpImpl<dynamic>>(
        () => _i61.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i62.Get>(() => _i62.Get());
    gh.factory<_i63.GetDeviceId>(() => _i63.GetDeviceId());
    gh.factory<_i64.GiftCardsDataSource>(() => _i65.ImplGiftCardDataSource());
    gh.factory<_i66.GiftCardsRepositories>(
        () => _i67.ImplGiftCardRepositories());
    gh.lazySingleton<_i68.GlobalContext>(() => _i68.GlobalContext());
    gh.lazySingleton<_i69.GlobalNotification>(() => _i69.GlobalNotification());
    gh.lazySingleton<_i70.GoogleSignInHelper>(() => _i70.GoogleSignInHelper());
    gh.lazySingleton<_i71.HandleErrors>(() => _i71.HandleErrors());
    gh.lazySingleton<_i72.HandleJsonResponse<dynamic>>(
        () => _i72.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i73.HandleRequestBody>(() => _i73.HandleRequestBody());
    gh.factory<_i74.InstoreCartDataSource>(
        () => _i75.ImplInstoreCartDataSource());
    gh.factory<_i76.InstoreCartRepository>(
        () => _i77.ImplInstoreCartRepository());
    gh.lazySingleton<_i78.LoadingHelper>(() => _i78.LoadingHelper());
    gh.lazySingleton<_i79.LocationService>(() => _i79.LocationService());
    gh.factory<_i80.LoyaltyPointsDataSource>(
        () => _i81.ImplLoyaltyPointsDataSource());
    gh.factory<_i82.LoyaltyPointsRepository>(
        () => _i83.ImplLoyaltyPointsRepository());
    gh.lazySingleton<_i84.NetworkInfoImpl>(() => _i84.NetworkInfoImpl());
    gh.lazySingleton<_i85.NewVersionHelper>(() => _i85.NewVersionHelper());
    gh.factory<_i86.NotificationsDataSources>(
        () => _i87.ImplNotificationsDataSources());
    gh.factory<_i88.NotificationsRepository>(
        () => _i89.ImplNotificationsRepository());
    gh.lazySingleton<_i90.Patch>(() => _i90.Patch());
    gh.factory<_i91.PaymentDataSources>(() => _i92.PaymentDataSourcesImpl());
    gh.factory<_i93.PaymentRepository>(() => _i94.PaymentRepositoryImpl());
    gh.factory<_i95.PermissionServices>(() => _i95.PermissionServices());
    gh.factory<_i96.PharmaciesRepository>(
        () => _i97.ImplPharmaciesRepository());
    gh.factory<_i98.PharmaciesSources>(() => _i99.ImplPharmaciesSources());
    gh.factory<_i100.PharmacyProductBehavior>(
        () => _i100.PharmacyProductBehavior());
    gh.lazySingleton<_i101.Post>(() => _i101.Post());
    gh.lazySingleton<_i102.ProductBehaviorRegistry>(
        () => _i102.ProductBehaviorRegistry(
              gh<_i60.GeneralProductBehavior>(),
              gh<_i100.PharmacyProductBehavior>(),
            ));
    gh.factory<_i103.ProductsDataSource>(() => _i104.ImplProductsDataSource());
    gh.factory<_i105.ProductsHelper>(() => _i105.ProductsHelper());
    gh.factory<_i106.ProductsRepository>(() => _i107.ImplProductsRepository());
    gh.factory<_i108.ProfileDataSources>(() => _i109.ImplProfileDataSources());
    gh.factory<_i110.ProfileRepository>(() => _i111.ImplProfileRepository());
    gh.factory<_i112.PurchasingDataSources>(
        () => _i113.ImplPurchasingDataSources());
    gh.factory<_i114.PurchasingRepository>(
        () => _i115.ImplPurchasingRepository());
    gh.lazySingleton<_i116.Put>(() => _i116.Put());
    gh.lazySingleton<_i117.RateAppHelper>(() => _i117.RateAppHelper());
    gh.factory<_i118.RestaurantsDataSource>(
        () => _i119.ImplRestaurantsDataSource());
    gh.factory<_i120.RestaurantsRepository>(
        () => _i121.ImplRestaurantsRepository());
    gh.lazySingleton<_i122.RouterHelper>(() => _i122.RouterHelper());
    gh.factory<_i123.SaleDataSources>(() => _i124.ImplSaleRepository());
    gh.factory<_i125.SaleRepository>(() => _i126.ImplSaleRepository());
    gh.factory<_i127.SearchDataSources>(() => _i128.ImplSearchDataSources());
    gh.factory<_i129.SearchRepository>(() => _i130.ImplSearchRepository());
    gh.factory<_i131.TicketsDataSources>(() => _i132.ImplTicketsDataSources());
    gh.factory<_i133.TicketsRepository>(() => _i134.ImplTicketsRepository());
    gh.lazySingleton<_i135.UserServiceHelper>(() => _i135.UserServiceHelper());
    gh.lazySingleton<_i136.Utilities>(() => _i136.Utilities());
    gh.factory<_i137.VipDataSource>(() => _i138.ImplVipSubscribeDataSource());
    gh.factory<_i139.VipRepositories>(() => _i140.ImplVipSubscribe());
    gh.factory<_i141.WalletDataSources>(() => _i142.ImplWalletDataSources());
    gh.factory<_i143.WalletRepository>(() => _i144.ImplWalletRepository());
    gh.factory<_i145.WishlistDataSources>(
        () => _i146.ImplWishlistDataSources());
    gh.factory<_i147.WishlistRepository>(() => _i148.ImplWishlistRepository());
    return this;
  }
}
