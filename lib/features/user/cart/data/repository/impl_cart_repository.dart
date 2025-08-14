import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart';
import 'package:flutter_tdd/features/user/cart/data/models/seller_shipping_model/seller_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/apply_gift_card_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/gift_card_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class ImplCartRepository extends CartRepository with ModelToDomain{
  var dataSource = getIt<CartDataSources>();
  @override
  Future<Either<Failure, CartDomainModel>> getCartItems(CartParams params)async {
    var result = await dataSource.getCartItems(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, bool>> addCartAddress(int param)async {
    return await dataSource.addCartAddress(param);
  }

  @override
  Future<Either<Failure, Shipping>> cartStoreShipping(List<Map> params)async {
    var result = await dataSource.cartStoreShipping(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, CouponResponse>> applyCoupon(String param)async {
    var result = await dataSource.applyCoupon(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, OrderSummary>> createOrder(CreateOrderParams params)async {
    var result = await dataSource.createOrder(params);
    return toDomainResult(result);
  }
  @override
  Future<Either<Failure, String>> addToCart(AddProductToCartParams params)async {
    return await dataSource.addToCart(params);
  }

  @override
  Future<Either<Failure, bool>> deleteCartItem(DeleteCartItemParams params)async {
    return await dataSource.deleteCartItem(params);
  }

  @override
  Future<Either<Failure, CartDomainModel>> updateCartItem(UpdateCartItemParams params)async {
    var result = await dataSource.updateCartItem(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<SellerShipping>>> getShippingInfo(bool param)async {
    var result = await dataSource.getShippingInfo(param);
    return toDomainResultList<SellerShipping, SellerShippingModel>(result);
  }

  @override
  Future<Either<Failure, OrderSummary>> getCombinedOrder(int param)async {
    var result = await dataSource.getCombinedOrder(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, ShippingSummary>> applyLoyaltyPoints(NoParams params)async {
    var result = await dataSource.applyLoyaltyPoints(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, ShippingSummary>> removeLoyaltyPoints(NoParams params)async {
    var result = await dataSource.removeLoyaltyPoints(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, GiftCardDomainModel>> applyGiftCard(ApplyGiftCardParams params)async {
    var result = await dataSource.applyGiftCard(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, String>> clearCart(CartParams params)async {
    return await dataSource.clearCart(params);
  }

  @override
  Future<Either<Failure, ShippingSummary>> removeCoupon(NoParams params)async {
    var result = await dataSource.removeCoupon(params);
    return toDomainResult(result);
  }
}