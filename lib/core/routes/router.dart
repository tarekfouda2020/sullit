part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //general
    ...authRoute,
    ...commonRoute,
    ...conversationRoute,
    //seller
    ...sellerDashboardRoute,
    ...sellerFilesRoute,
    ...sellerNotifyRoute,
    ...sellerOrderRoutes,
    ...sellerPaymentRoute,
    ...sellerProductsRoute,
    ...sellerProfileRoute,
    ...sellerShopRoute,
    //user
    ...addressesRoute,
    ...blogRoutes,
    ...baseRoute,
    ...cartRoute,
    ...categoryRoute,
    ...dashboardRoute,
    ...notifyRoute,
    ...productsRoute,
    ...paymentRoutes,
    ...searchRoute,
    ...wishListRoute,
    ...profileRoute,
    ...purchasingRoute,
    ...saleRoute,
    ...ticketRoute,
    ...walletRoute,
    ...classifiedProductsRoutes,
    ...customersProductsRoutes,
    ...videoRoutes,
    ...vouchersRoutes,
    ...giftCardRoute,
    ...instoreCartRoute,
    ...vipMembershipRoute,
    ...loyaltyPointsRoute,
    ...bestSellersRoutes,
    ...pharmaciesRoute
  ],
)
class $AppRouter {}
