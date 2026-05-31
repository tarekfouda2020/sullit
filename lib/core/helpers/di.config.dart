// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/barcode_service.dart' as _i13;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i58;
import 'package:flutter_tdd/core/helpers/get_device_id.dart' as _i61;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i66;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i67;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i71;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i72;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i78;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i88;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i108;
import 'package:flutter_tdd/core/helpers/router_helper.dart' as _i109;
import 'package:flutter_tdd/core/helpers/user_service_helper.dart' as _i122;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i123;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i54;
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart' as _i57;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i60;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i83;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i93;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i107;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i55;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i56;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i68;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i69;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i70;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i59;
import 'package:flutter_tdd/core/network/network_info.dart' as _i77;
import 'package:flutter_tdd/core/services/deep_link_service.dart' as _i53;
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart'
    as _i8;
import 'package:flutter_tdd/features/general/auth/data/data_source/impl_auth_data_source.dart'
    as _i9;
import 'package:flutter_tdd/features/general/auth/data/repository/impl_auth_repository.dart'
    as _i12;
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart'
    as _i11;
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart'
    as _i10;
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart'
    as _i41;
import 'package:flutter_tdd/features/general/common/data/data_sources/impl_common_data_sources.dart'
    as _i42;
import 'package:flutter_tdd/features/general/common/data/repository/impl_common_repository.dart'
    as _i44;
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart'
    as _i43;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart'
    as _i4;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/impl_addresses_data_sources.dart'
    as _i5;
import 'package:flutter_tdd/features/user/addresses/data/repository/impl_addresses_repository.dart'
    as _i7;
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart'
    as _i14;
import 'package:flutter_tdd/features/user/base/data/data_sources/impl_base_data_sources.dart'
    as _i15;
import 'package:flutter_tdd/features/user/base/data/repository/impl_base_repository.dart'
    as _i17;
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart'
    as _i16;
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/best_sellers_sources.dart'
    as _i20;
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/impl_best_sellers_sources.dart'
    as _i21;
import 'package:flutter_tdd/features/user/best_sellers/data/repository/impl_best_sellers_repository.dart'
    as _i19;
import 'package:flutter_tdd/features/user/best_sellers/domain/repository/best_sellers_repository.dart'
    as _i18;
import 'package:flutter_tdd/features/user/blog/data/data_sources/blog_data_sources.dart'
    as _i22;
import 'package:flutter_tdd/features/user/blog/data/data_sources/impl_blog_data_sources.dart'
    as _i23;
import 'package:flutter_tdd/features/user/blog/data/repository/impl_blog_repository.dart'
    as _i25;
import 'package:flutter_tdd/features/user/blog/domain/repository/blog_repository.dart'
    as _i24;
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart'
    as _i27;
import 'package:flutter_tdd/features/user/cart/data/data_sources/impl_cart_data_sources.dart'
    as _i28;
import 'package:flutter_tdd/features/user/cart/data/repository/impl_cart_repository.dart'
    as _i32;
import 'package:flutter_tdd/features/user/cart/domain/entities/cart_check_out_saved_data.dart'
    as _i26;
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart'
    as _i31;
import 'package:flutter_tdd/features/user/cart/presentation/manager/helpers/cart_navigate_helper.dart'
    as _i30;
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart'
    as _i33;
import 'package:flutter_tdd/features/user/category/data/data_sources/impl_category_data_sources.dart'
    as _i34;
import 'package:flutter_tdd/features/user/category/data/repository/impl_category_repository.dart'
    as _i36;
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart'
    as _i35;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/classified_products_data_sources.dart'
    as _i37;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/impl_classified_products_data_sources.dart'
    as _i38;
import 'package:flutter_tdd/features/user/classified_products/data/repository/impl_classified_products_repository.dart'
    as _i40;
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart'
    as _i39;
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart'
    as _i3;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/cus_products_data_sources.dart'
    as _i47;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/impl_cus_products_data_sources.dart'
    as _i48;
import 'package:flutter_tdd/features/user/customers_products/data/repository/impl_cus_products_repository.dart'
    as _i46;
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart'
    as _i45;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart'
    as _i49;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/impl_dashboard_data_sources.dart'
    as _i50;
import 'package:flutter_tdd/features/user/dashboard/data/repository/impl_dashboard_repository.dart'
    as _i52;
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart'
    as _i51;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/gift_cards_data_source.dart'
    as _i62;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/impl_gift_card_data_source.dart'
    as _i63;
import 'package:flutter_tdd/features/user/gift_card/data/repositories/impl_gift_card_repositories.dart'
    as _i65;
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart'
    as _i64;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/impl_loyalty_points_data_source.dart'
    as _i74;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart'
    as _i73;
import 'package:flutter_tdd/features/user/loyalty_points/data/repositories/impl_loyalty_points_repository.dart'
    as _i76;
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart'
    as _i75;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/impl_notifications_data_sources.dart'
    as _i80;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart'
    as _i79;
import 'package:flutter_tdd/features/user/notifications/data/repository/impl_notifications_repository.dart'
    as _i82;
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart'
    as _i81;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source.dart'
    as _i84;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source_impl.dart'
    as _i85;
import 'package:flutter_tdd/features/user/payment/data/repository/payment_repository_impl.dart'
    as _i87;
import 'package:flutter_tdd/features/user/payment/domain/repository/payment_repository.dart'
    as _i86;
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/impl_pharmacies_sources.dart'
    as _i92;
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart'
    as _i91;
import 'package:flutter_tdd/features/user/pharmacies/data/repository/impl_pharmacies_repository.dart'
    as _i90;
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart'
    as _i89;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/impl_products_data_source.dart'
    as _i95;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart'
    as _i94;
import 'package:flutter_tdd/features/user/products/data/repository/impl_products_repository.dart'
    as _i98;
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart'
    as _i97;
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart'
    as _i29;
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart'
    as _i96;
import 'package:flutter_tdd/features/user/profile/data/data_sources/impl_profile_data_sources.dart'
    as _i100;
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart'
    as _i99;
import 'package:flutter_tdd/features/user/profile/data/repository/impl_profile_repository.dart'
    as _i102;
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart'
    as _i101;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/impl_purchasing_data_sources.dart'
    as _i104;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart'
    as _i103;
import 'package:flutter_tdd/features/user/purchasing/data/repository/impl_purchasing_repository.dart'
    as _i106;
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart'
    as _i105;
import 'package:flutter_tdd/features/user/sale/data/data_sources/impl_sale_data_sources.dart'
    as _i111;
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart'
    as _i110;
import 'package:flutter_tdd/features/user/sale/data/repository/impl_sale_repository.dart'
    as _i113;
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart'
    as _i112;
import 'package:flutter_tdd/features/user/search/data/data_sources/impl_search_data_sources.dart'
    as _i115;
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart'
    as _i114;
import 'package:flutter_tdd/features/user/search/data/repository/impl_search_repository.dart'
    as _i117;
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart'
    as _i116;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/impl_tickets_data_sources.dart'
    as _i119;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart'
    as _i118;
import 'package:flutter_tdd/features/user/tickets/data/repository/impl_tickets_repository.dart'
    as _i121;
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart'
    as _i120;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/impl_vip_subscribe_data_source.dart'
    as _i125;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart'
    as _i124;
import 'package:flutter_tdd/features/user/vip_subscribe/data/repositories/impl_vip_repositories.dart'
    as _i127;
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart'
    as _i126;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/impl_wallet_data_sources.dart'
    as _i129;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart'
    as _i128;
import 'package:flutter_tdd/features/user/wallet/data/repository/impl_wallet_repository.dart'
    as _i131;
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart'
    as _i130;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/impl_wishlist_data_sources.dart'
    as _i133;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart'
    as _i132;
import 'package:flutter_tdd/features/user/wishlist/data/repository/impl_wishlist_repository.dart'
    as _i135;
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart'
    as _i134;
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
    gh.factory<_i10.AuthHelper>(() => _i10.AuthHelper());
    gh.factory<_i11.AuthRepository>(() => _i12.ImplAuthRepository());
    gh.lazySingleton<_i13.BarcodeService>(() => _i13.BarcodeService());
    gh.factory<_i14.BaseDataSources>(() => _i15.ImplBaseDataSources());
    gh.factory<_i16.BaseRepository>(() => _i17.ImplBaseRepository());
    gh.factory<_i18.BestSellersRepository>(
        () => _i19.ImplBestSellersRepository());
    gh.factory<_i20.BestSellersSources>(() => _i21.ImplBestSellersSources());
    gh.factory<_i22.BlogDataSources>(() => _i23.ImplBlogDataSources());
    gh.factory<_i24.BlogRepository>(() => _i25.ImplBlogRepository());
    gh.lazySingleton<_i26.CartCheckOutSavedData>(
        () => _i26.CartCheckOutSavedData());
    gh.factory<_i27.CartDataSources>(() => _i28.ImplCartDataSources());
    gh.lazySingleton<_i29.CartHelper>(() => _i29.CartHelper());
    gh.lazySingleton<_i30.CartNavigateHelper>(() => _i30.CartNavigateHelper());
    gh.factory<_i31.CartRepository>(() => _i32.ImplCartRepository());
    gh.factory<_i33.CategoryDataSources>(() => _i34.ImplCategoryDataSources());
    gh.factory<_i35.CategoryRepository>(() => _i36.ImplCategoryRepository());
    gh.factory<_i37.ClassifiedProductsDataSources>(
        () => _i38.ImplClassifiedProductsDataSources());
    gh.factory<_i39.ClassifiedProductsRepository>(
        () => _i40.ImplClassifiedProductsRepository());
    gh.factory<_i41.CommonDataSources>(() => _i42.ImplCommonDataSources());
    gh.factory<_i43.CommonRepository>(() => _i44.ImplCommonRepository());
    gh.factory<_i45.CusProductRepository>(
        () => _i46.ImplCusProductsRepository());
    gh.factory<_i47.CusProductsDataSources>(
        () => _i48.ImplCusProductsDataSources());
    gh.factory<_i49.DashboardDataSources>(
        () => _i50.ImplDashboardDataSources());
    gh.factory<_i51.DashboardRepository>(() => _i52.ImplDashboardRepository());
    gh.singleton<_i53.DeepLinkService>(_i53.DeepLinkService());
    gh.lazySingleton<_i54.Delete>(() => _i54.Delete());
    gh.lazySingleton<_i55.DioHeader>(() => _i55.DioHeader());
    gh.lazySingleton<_i56.DioOptions>(() => _i56.DioOptions());
    gh.lazySingleton<_i57.Download>(() => _i57.Download());
    gh.lazySingleton<_i58.FirebaseAnalyticsHelper>(
        () => _i58.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i59.GenericHttpImpl<dynamic>>(
        () => _i59.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i60.Get>(() => _i60.Get());
    gh.factory<_i61.GetDeviceId>(() => _i61.GetDeviceId());
    gh.factory<_i62.GiftCardsDataSource>(() => _i63.ImplGiftCardDataSource());
    gh.factory<_i64.GiftCardsRepositories>(
        () => _i65.ImplGiftCardRepositories());
    gh.lazySingleton<_i66.GlobalContext>(() => _i66.GlobalContext());
    gh.lazySingleton<_i67.GlobalNotification>(() => _i67.GlobalNotification());
    gh.lazySingleton<_i68.HandleErrors>(() => _i68.HandleErrors());
    gh.lazySingleton<_i69.HandleJsonResponse<dynamic>>(
        () => _i69.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i70.HandleRequestBody>(() => _i70.HandleRequestBody());
    gh.lazySingleton<_i71.LoadingHelper>(() => _i71.LoadingHelper());
    gh.factory<_i72.LocationService>(() => _i72.LocationService());
    gh.factory<_i73.LoyaltyPointsDataSource>(
        () => _i74.ImplLoyaltyPointsDataSource());
    gh.factory<_i75.LoyaltyPointsRepository>(
        () => _i76.ImplLoyaltyPointsRepository());
    gh.lazySingleton<_i77.NetworkInfoImpl>(() => _i77.NetworkInfoImpl());
    gh.lazySingleton<_i78.NewVersionHelper>(() => _i78.NewVersionHelper());
    gh.factory<_i79.NotificationsDataSources>(
        () => _i80.ImplNotificationsDataSources());
    gh.factory<_i81.NotificationsRepository>(
        () => _i82.ImplNotificationsRepository());
    gh.lazySingleton<_i83.Patch>(() => _i83.Patch());
    gh.factory<_i84.PaymentDataSources>(() => _i85.PaymentDataSourcesImpl());
    gh.factory<_i86.PaymentRepository>(() => _i87.PaymentRepositoryImpl());
    gh.factory<_i88.PermissionServices>(() => _i88.PermissionServices());
    gh.factory<_i89.PharmaciesRepository>(
        () => _i90.ImplPharmaciesRepository());
    gh.factory<_i91.PharmaciesSources>(() => _i92.ImplPharmaciesSources());
    gh.lazySingleton<_i93.Post>(() => _i93.Post());
    gh.factory<_i94.ProductsDataSource>(() => _i95.ImplProductsDataSource());
    gh.factory<_i96.ProductsHelper>(() => _i96.ProductsHelper());
    gh.factory<_i97.ProductsRepository>(() => _i98.ImplProductsRepository());
    gh.factory<_i99.ProfileDataSources>(() => _i100.ImplProfileDataSources());
    gh.factory<_i101.ProfileRepository>(() => _i102.ImplProfileRepository());
    gh.factory<_i103.PurchasingDataSources>(
        () => _i104.ImplPurchasingDataSources());
    gh.factory<_i105.PurchasingRepository>(
        () => _i106.ImplPurchasingRepository());
    gh.lazySingleton<_i107.Put>(() => _i107.Put());
    gh.lazySingleton<_i108.RateAppHelper>(() => _i108.RateAppHelper());
    gh.lazySingleton<_i109.RouterHelper>(() => _i109.RouterHelper());
    gh.factory<_i110.SaleDataSources>(() => _i111.ImplSaleRepository());
    gh.factory<_i112.SaleRepository>(() => _i113.ImplSaleRepository());
    gh.factory<_i114.SearchDataSources>(() => _i115.ImplSearchDataSources());
    gh.factory<_i116.SearchRepository>(() => _i117.ImplSearchRepository());
    gh.factory<_i118.TicketsDataSources>(() => _i119.ImplTicketsDataSources());
    gh.factory<_i120.TicketsRepository>(() => _i121.ImplTicketsRepository());
    gh.lazySingleton<_i122.UserServiceHelper>(() => _i122.UserServiceHelper());
    gh.lazySingleton<_i123.Utilities>(() => _i123.Utilities());
    gh.factory<_i124.VipDataSource>(() => _i125.ImplVipSubscribeDataSource());
    gh.factory<_i126.VipRepositories>(() => _i127.ImplVipSubscribe());
    gh.factory<_i128.WalletDataSources>(() => _i129.ImplWalletDataSources());
    gh.factory<_i130.WalletRepository>(() => _i131.ImplWalletRepository());
    gh.factory<_i132.WishlistDataSources>(
        () => _i133.ImplWishlistDataSources());
    gh.factory<_i134.WishlistRepository>(() => _i135.ImplWishlistRepository());
    return this;
  }
}
