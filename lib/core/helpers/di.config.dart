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
    as _i57;
import 'package:flutter_tdd/core/helpers/get_device_id.dart' as _i60;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i65;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i66;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i70;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i71;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i77;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i87;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i103;
import 'package:flutter_tdd/core/helpers/user_service_helper.dart' as _i116;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i117;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i53;
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart' as _i56;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i59;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i82;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i88;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i102;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i54;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i55;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i67;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i68;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i69;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i58;
import 'package:flutter_tdd/core/network/network_info.dart' as _i76;
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
    as _i61;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/impl_gift_card_data_source.dart'
    as _i62;
import 'package:flutter_tdd/features/user/gift_card/data/repositories/impl_gift_card_repositories.dart'
    as _i64;
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart'
    as _i63;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/impl_loyalty_points_data_source.dart'
    as _i73;
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart'
    as _i72;
import 'package:flutter_tdd/features/user/loyalty_points/data/repositories/impl_loyalty_points_repository.dart'
    as _i75;
import 'package:flutter_tdd/features/user/loyalty_points/domain/repositories/loyalty_points_repository.dart'
    as _i74;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/impl_notifications_data_sources.dart'
    as _i79;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart'
    as _i78;
import 'package:flutter_tdd/features/user/notifications/data/repository/impl_notifications_repository.dart'
    as _i81;
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart'
    as _i80;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source.dart'
    as _i83;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source_impl.dart'
    as _i84;
import 'package:flutter_tdd/features/user/payment/data/repository/payment_repository_impl.dart'
    as _i86;
import 'package:flutter_tdd/features/user/payment/domain/repository/payment_repository.dart'
    as _i85;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/impl_products_data_source.dart'
    as _i90;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart'
    as _i89;
import 'package:flutter_tdd/features/user/products/data/repository/impl_products_repository.dart'
    as _i93;
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart'
    as _i92;
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart'
    as _i29;
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart'
    as _i91;
import 'package:flutter_tdd/features/user/profile/data/data_sources/impl_profile_data_sources.dart'
    as _i95;
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart'
    as _i94;
import 'package:flutter_tdd/features/user/profile/data/repository/impl_profile_repository.dart'
    as _i97;
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart'
    as _i96;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/impl_purchasing_data_sources.dart'
    as _i99;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart'
    as _i98;
import 'package:flutter_tdd/features/user/purchasing/data/repository/impl_purchasing_repository.dart'
    as _i101;
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart'
    as _i100;
import 'package:flutter_tdd/features/user/sale/data/data_sources/impl_sale_data_sources.dart'
    as _i105;
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart'
    as _i104;
import 'package:flutter_tdd/features/user/sale/data/repository/impl_sale_repository.dart'
    as _i107;
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart'
    as _i106;
import 'package:flutter_tdd/features/user/search/data/data_sources/impl_search_data_sources.dart'
    as _i109;
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart'
    as _i108;
import 'package:flutter_tdd/features/user/search/data/repository/impl_search_repository.dart'
    as _i111;
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart'
    as _i110;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/impl_tickets_data_sources.dart'
    as _i113;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart'
    as _i112;
import 'package:flutter_tdd/features/user/tickets/data/repository/impl_tickets_repository.dart'
    as _i115;
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart'
    as _i114;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/impl_vip_subscribe_data_source.dart'
    as _i119;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart'
    as _i118;
import 'package:flutter_tdd/features/user/vip_subscribe/data/repositories/impl_vip_repositories.dart'
    as _i121;
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart'
    as _i120;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/impl_wallet_data_sources.dart'
    as _i123;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart'
    as _i122;
import 'package:flutter_tdd/features/user/wallet/data/repository/impl_wallet_repository.dart'
    as _i125;
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart'
    as _i124;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/impl_wishlist_data_sources.dart'
    as _i127;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart'
    as _i126;
import 'package:flutter_tdd/features/user/wishlist/data/repository/impl_wishlist_repository.dart'
    as _i129;
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart'
    as _i128;
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
    gh.lazySingleton<_i53.Delete>(() => _i53.Delete());
    gh.lazySingleton<_i54.DioHeader>(() => _i54.DioHeader());
    gh.lazySingleton<_i55.DioOptions>(() => _i55.DioOptions());
    gh.lazySingleton<_i56.Download>(() => _i56.Download());
    gh.lazySingleton<_i57.FirebaseAnalyticsHelper>(
        () => _i57.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i58.GenericHttpImpl<dynamic>>(
        () => _i58.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i59.Get>(() => _i59.Get());
    gh.factory<_i60.GetDeviceId>(() => _i60.GetDeviceId());
    gh.factory<_i61.GiftCardsDataSource>(() => _i62.ImplGiftCardDataSource());
    gh.factory<_i63.GiftCardsRepositories>(
        () => _i64.ImplGiftCardRepositories());
    gh.lazySingleton<_i65.GlobalContext>(() => _i65.GlobalContext());
    gh.lazySingleton<_i66.GlobalNotification>(() => _i66.GlobalNotification());
    gh.lazySingleton<_i67.HandleErrors>(() => _i67.HandleErrors());
    gh.lazySingleton<_i68.HandleJsonResponse<dynamic>>(
        () => _i68.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i69.HandleRequestBody>(() => _i69.HandleRequestBody());
    gh.lazySingleton<_i70.LoadingHelper>(() => _i70.LoadingHelper());
    gh.factory<_i71.LocationService>(() => _i71.LocationService());
    gh.factory<_i72.LoyaltyPointsDataSource>(
        () => _i73.ImplLoyaltyPointsDataSource());
    gh.factory<_i74.LoyaltyPointsRepository>(
        () => _i75.ImplLoyaltyPointsRepository());
    gh.lazySingleton<_i76.NetworkInfoImpl>(() => _i76.NetworkInfoImpl());
    gh.lazySingleton<_i77.NewVersionHelper>(() => _i77.NewVersionHelper());
    gh.factory<_i78.NotificationsDataSources>(
        () => _i79.ImplNotificationsDataSources());
    gh.factory<_i80.NotificationsRepository>(
        () => _i81.ImplNotificationsRepository());
    gh.lazySingleton<_i82.Patch>(() => _i82.Patch());
    gh.factory<_i83.PaymentDataSources>(() => _i84.PaymentDataSourcesImpl());
    gh.factory<_i85.PaymentRepository>(() => _i86.PaymentRepositoryImpl());
    gh.factory<_i87.PermissionServices>(() => _i87.PermissionServices());
    gh.lazySingleton<_i88.Post>(() => _i88.Post());
    gh.factory<_i89.ProductsDataSource>(() => _i90.ImplProductsDataSource());
    gh.factory<_i91.ProductsHelper>(() => _i91.ProductsHelper());
    gh.factory<_i92.ProductsRepository>(() => _i93.ImplProductsRepository());
    gh.factory<_i94.ProfileDataSources>(() => _i95.ImplProfileDataSources());
    gh.factory<_i96.ProfileRepository>(() => _i97.ImplProfileRepository());
    gh.factory<_i98.PurchasingDataSources>(
        () => _i99.ImplPurchasingDataSources());
    gh.factory<_i100.PurchasingRepository>(
        () => _i101.ImplPurchasingRepository());
    gh.lazySingleton<_i102.Put>(() => _i102.Put());
    gh.lazySingleton<_i103.RateAppHelper>(() => _i103.RateAppHelper());
    gh.factory<_i104.SaleDataSources>(() => _i105.ImplSaleRepository());
    gh.factory<_i106.SaleRepository>(() => _i107.ImplSaleRepository());
    gh.factory<_i108.SearchDataSources>(() => _i109.ImplSearchDataSources());
    gh.factory<_i110.SearchRepository>(() => _i111.ImplSearchRepository());
    gh.factory<_i112.TicketsDataSources>(() => _i113.ImplTicketsDataSources());
    gh.factory<_i114.TicketsRepository>(() => _i115.ImplTicketsRepository());
    gh.lazySingleton<_i116.UserServiceHelper>(() => _i116.UserServiceHelper());
    gh.lazySingleton<_i117.Utilities>(() => _i117.Utilities());
    gh.factory<_i118.VipDataSource>(() => _i119.ImplVipSubscribeDataSource());
    gh.factory<_i120.VipRepositories>(() => _i121.ImplVipSubscribe());
    gh.factory<_i122.WalletDataSources>(() => _i123.ImplWalletDataSources());
    gh.factory<_i124.WalletRepository>(() => _i125.ImplWalletRepository());
    gh.factory<_i126.WishlistDataSources>(
        () => _i127.ImplWishlistDataSources());
    gh.factory<_i128.WishlistRepository>(() => _i129.ImplWishlistRepository());
    return this;
  }
}
