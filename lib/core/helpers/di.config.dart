// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i50;
import 'package:flutter_tdd/core/helpers/get_device_id.dart' as _i53;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i58;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i59;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i63;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i64;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i66;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i76;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i92;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i105;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i46;
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart' as _i49;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i52;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i71;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i77;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i91;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i47;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i48;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i60;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i61;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i62;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i51;
import 'package:flutter_tdd/core/network/network_info.dart' as _i65;
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
    as _i34;
import 'package:flutter_tdd/features/general/common/data/data_sources/impl_common_data_sources.dart'
    as _i35;
import 'package:flutter_tdd/features/general/common/data/repository/impl_common_repository.dart'
    as _i37;
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart'
    as _i36;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart'
    as _i4;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/impl_addresses_data_sources.dart'
    as _i5;
import 'package:flutter_tdd/features/user/addresses/data/repository/impl_addresses_repository.dart'
    as _i7;
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart'
    as _i13;
import 'package:flutter_tdd/features/user/base/data/data_sources/impl_base_data_sources.dart'
    as _i14;
import 'package:flutter_tdd/features/user/base/data/repository/impl_base_repository.dart'
    as _i16;
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart'
    as _i15;
import 'package:flutter_tdd/features/user/blog/data/data_sources/blog_data_sources.dart'
    as _i17;
import 'package:flutter_tdd/features/user/blog/data/data_sources/impl_blog_data_sources.dart'
    as _i18;
import 'package:flutter_tdd/features/user/blog/data/repository/impl_blog_repository.dart'
    as _i20;
import 'package:flutter_tdd/features/user/blog/domain/repository/blog_repository.dart'
    as _i19;
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart'
    as _i21;
import 'package:flutter_tdd/features/user/cart/data/data_sources/impl_cart_data_sources.dart'
    as _i22;
import 'package:flutter_tdd/features/user/cart/data/repository/impl_cart_repository.dart'
    as _i25;
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart'
    as _i24;
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart'
    as _i26;
import 'package:flutter_tdd/features/user/category/data/data_sources/impl_category_data_sources.dart'
    as _i27;
import 'package:flutter_tdd/features/user/category/data/repository/impl_category_repository.dart'
    as _i29;
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart'
    as _i28;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/classified_products_data_sources.dart'
    as _i30;
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/impl_classified_products_data_sources.dart'
    as _i31;
import 'package:flutter_tdd/features/user/classified_products/data/repository/impl_classified_products_repository.dart'
    as _i33;
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart'
    as _i32;
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart'
    as _i3;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/cus_products_data_sources.dart'
    as _i40;
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/impl_cus_products_data_sources.dart'
    as _i41;
import 'package:flutter_tdd/features/user/customers_products/data/repository/impl_cus_products_repository.dart'
    as _i39;
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart'
    as _i38;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart'
    as _i42;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/impl_dashboard_data_sources.dart'
    as _i43;
import 'package:flutter_tdd/features/user/dashboard/data/repository/impl_dashboard_repository.dart'
    as _i45;
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart'
    as _i44;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/gift_cards_data_source.dart'
    as _i54;
import 'package:flutter_tdd/features/user/gift_card/data/data_source/impl_gift_card_data_source.dart'
    as _i55;
import 'package:flutter_tdd/features/user/gift_card/data/repositories/impl_gift_card_repositories.dart'
    as _i57;
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart'
    as _i56;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/impl_notifications_data_sources.dart'
    as _i68;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart'
    as _i67;
import 'package:flutter_tdd/features/user/notifications/data/repository/impl_notifications_repository.dart'
    as _i70;
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart'
    as _i69;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source.dart'
    as _i72;
import 'package:flutter_tdd/features/user/payment/data/data_sources/payment_data_source_impl.dart'
    as _i73;
import 'package:flutter_tdd/features/user/payment/data/repository/payment_repository_impl.dart'
    as _i75;
import 'package:flutter_tdd/features/user/payment/domain/repository/payment_repository.dart'
    as _i74;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/impl_products_data_source.dart'
    as _i79;
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart'
    as _i78;
import 'package:flutter_tdd/features/user/products/data/repository/impl_products_repository.dart'
    as _i82;
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart'
    as _i81;
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart'
    as _i23;
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart'
    as _i80;
import 'package:flutter_tdd/features/user/profile/data/data_sources/impl_profile_data_sources.dart'
    as _i84;
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart'
    as _i83;
import 'package:flutter_tdd/features/user/profile/data/repository/impl_profile_repository.dart'
    as _i86;
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart'
    as _i85;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/impl_purchasing_data_sources.dart'
    as _i88;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart'
    as _i87;
import 'package:flutter_tdd/features/user/purchasing/data/repository/impl_purchasing_repository.dart'
    as _i90;
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart'
    as _i89;
import 'package:flutter_tdd/features/user/sale/data/data_sources/impl_sale_data_sources.dart'
    as _i94;
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart'
    as _i93;
import 'package:flutter_tdd/features/user/sale/data/repository/impl_sale_repository.dart'
    as _i96;
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart'
    as _i95;
import 'package:flutter_tdd/features/user/search/data/data_sources/impl_search_data_sources.dart'
    as _i98;
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart'
    as _i97;
import 'package:flutter_tdd/features/user/search/data/repository/impl_search_repository.dart'
    as _i100;
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart'
    as _i99;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/impl_tickets_data_sources.dart'
    as _i102;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart'
    as _i101;
import 'package:flutter_tdd/features/user/tickets/data/repository/impl_tickets_repository.dart'
    as _i104;
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart'
    as _i103;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/impl_vip_subscribe_data_source.dart'
    as _i107;
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart'
    as _i106;
import 'package:flutter_tdd/features/user/vip_subscribe/data/repositories/impl_vip_repositories.dart'
    as _i109;
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart'
    as _i108;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/impl_wallet_data_sources.dart'
    as _i111;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart'
    as _i110;
import 'package:flutter_tdd/features/user/wallet/data/repository/impl_wallet_repository.dart'
    as _i113;
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart'
    as _i112;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/impl_wishlist_data_sources.dart'
    as _i115;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart'
    as _i114;
import 'package:flutter_tdd/features/user/wishlist/data/repository/impl_wishlist_repository.dart'
    as _i117;
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart'
    as _i116;
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
    gh.factory<_i13.BaseDataSources>(() => _i14.ImplBaseDataSources());
    gh.factory<_i15.BaseRepository>(() => _i16.ImplBaseRepository());
    gh.factory<_i17.BlogDataSources>(() => _i18.ImplBlogDataSources());
    gh.factory<_i19.BlogRepository>(() => _i20.ImplBlogRepository());
    gh.factory<_i21.CartDataSources>(() => _i22.ImplCartDataSources());
    gh.factory<_i23.CartHelper>(() => _i23.CartHelper());
    gh.factory<_i24.CartRepository>(() => _i25.ImplCartRepository());
    gh.factory<_i26.CategoryDataSources>(() => _i27.ImplCategoryDataSources());
    gh.factory<_i28.CategoryRepository>(() => _i29.ImplCategoryRepository());
    gh.factory<_i30.ClassifiedProductsDataSources>(
        () => _i31.ImplClassifiedProductsDataSources());
    gh.factory<_i32.ClassifiedProductsRepository>(
        () => _i33.ImplClassifiedProductsRepository());
    gh.factory<_i34.CommonDataSources>(() => _i35.ImplCommonDataSources());
    gh.factory<_i36.CommonRepository>(() => _i37.ImplCommonRepository());
    gh.factory<_i38.CusProductRepository>(
        () => _i39.ImplCusProductsRepository());
    gh.factory<_i40.CusProductsDataSources>(
        () => _i41.ImplCusProductsDataSources());
    gh.factory<_i42.DashboardDataSources>(
        () => _i43.ImplDashboardDataSources());
    gh.factory<_i44.DashboardRepository>(() => _i45.ImplDashboardRepository());
    gh.lazySingleton<_i46.Delete>(() => _i46.Delete());
    gh.lazySingleton<_i47.DioHeader>(() => _i47.DioHeader());
    gh.lazySingleton<_i48.DioOptions>(() => _i48.DioOptions());
    gh.lazySingleton<_i49.Download>(() => _i49.Download());
    gh.lazySingleton<_i50.FirebaseAnalyticsHelper>(
        () => _i50.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i51.GenericHttpImpl<dynamic>>(
        () => _i51.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i52.Get>(() => _i52.Get());
    gh.factory<_i53.GetDeviceId>(() => _i53.GetDeviceId());
    gh.factory<_i54.GiftCardsDataSource>(() => _i55.ImplGiftCardDataSource());
    gh.factory<_i56.GiftCardsRepositories>(
        () => _i57.ImplGiftCardRepositories());
    gh.lazySingleton<_i58.GlobalContext>(() => _i58.GlobalContext());
    gh.lazySingleton<_i59.GlobalNotification>(() => _i59.GlobalNotification());
    gh.lazySingleton<_i60.HandleErrors>(() => _i60.HandleErrors());
    gh.lazySingleton<_i61.HandleJsonResponse<dynamic>>(
        () => _i61.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i62.HandleRequestBody>(() => _i62.HandleRequestBody());
    gh.lazySingleton<_i63.LoadingHelper>(() => _i63.LoadingHelper());
    gh.factory<_i64.LocationService>(() => _i64.LocationService());
    gh.lazySingleton<_i65.NetworkInfoImpl>(() => _i65.NetworkInfoImpl());
    gh.lazySingleton<_i66.NewVersionHelper>(() => _i66.NewVersionHelper());
    gh.factory<_i67.NotificationsDataSources>(
        () => _i68.ImplNotificationsDataSources());
    gh.factory<_i69.NotificationsRepository>(
        () => _i70.ImplNotificationsRepository());
    gh.lazySingleton<_i71.Patch>(() => _i71.Patch());
    gh.factory<_i72.PaymentDataSources>(() => _i73.PaymentDataSourcesImpl());
    gh.factory<_i74.PaymentRepository>(() => _i75.PaymentRepositoryImpl());
    gh.factory<_i76.PermissionServices>(() => _i76.PermissionServices());
    gh.lazySingleton<_i77.Post>(() => _i77.Post());
    gh.factory<_i78.ProductsDataSource>(() => _i79.ImplProductsDataSource());
    gh.factory<_i80.ProductsHelper>(() => _i80.ProductsHelper());
    gh.factory<_i81.ProductsRepository>(() => _i82.ImplProductsRepository());
    gh.factory<_i83.ProfileDataSources>(() => _i84.ImplProfileDataSources());
    gh.factory<_i85.ProfileRepository>(() => _i86.ImplProfileRepository());
    gh.factory<_i87.PurchasingDataSources>(
        () => _i88.ImplPurchasingDataSources());
    gh.factory<_i89.PurchasingRepository>(
        () => _i90.ImplPurchasingRepository());
    gh.lazySingleton<_i91.Put>(() => _i91.Put());
    gh.lazySingleton<_i92.RateAppHelper>(() => _i92.RateAppHelper());
    gh.factory<_i93.SaleDataSources>(() => _i94.ImplSaleRepository());
    gh.factory<_i95.SaleRepository>(() => _i96.ImplSaleRepository());
    gh.factory<_i97.SearchDataSources>(() => _i98.ImplSearchDataSources());
    gh.factory<_i99.SearchRepository>(() => _i100.ImplSearchRepository());
    gh.factory<_i101.TicketsDataSources>(() => _i102.ImplTicketsDataSources());
    gh.factory<_i103.TicketsRepository>(() => _i104.ImplTicketsRepository());
    gh.lazySingleton<_i105.Utilities>(() => _i105.Utilities());
    gh.factory<_i106.VipDataSource>(() => _i107.ImplVipSubscribeDataSource());
    gh.factory<_i108.VipRepositories>(() => _i109.ImplVipSubscribe());
    gh.factory<_i110.WalletDataSources>(() => _i111.ImplWalletDataSources());
    gh.factory<_i112.WalletRepository>(() => _i113.ImplWalletRepository());
    gh.factory<_i114.WishlistDataSources>(
        () => _i115.ImplWishlistDataSources());
    gh.factory<_i116.WishlistRepository>(() => _i117.ImplWishlistRepository());
    return this;
  }
}
