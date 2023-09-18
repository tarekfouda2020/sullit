// ignore_for_file: avoid_dynamic_calls
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/cus_products_data_sources.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/customer_product_details_model/customer_product_details_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/customer_product_model/customer_product_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/product_specifications_model/product_specifications_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CusProductsDataSources)
class ImplCusProductsDataSources extends CusProductsDataSources {
  @override
  Future<Either<Failure, ProductSpecificationsModel>> getProductsSpecifications(
      CustomerProductsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCustomersProducts,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      requestBody: params.toJson(),
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => ProductSpecificationsModel.fromJson(json),
    );
    return await GenericHttpImpl<ProductSpecificationsModel>()(model);
  }

  @override
  Future<Either<Failure, List<CustomerProductModel>>> getCustomerProducts(
      CustomerProductsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCustomersProducts,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseType: ResType.list,
      requestBody: params.toJson(),
      toJsonFunc: (json) => List<CustomerProductModel>.from(
        json.map((e) => CustomerProductModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["section_products"]["products"],
    );
    return await GenericHttpImpl<List<CustomerProductModel>>().call(model);
  }

  @override
  Future<Either<Failure, CustomerProductDetailsModel>>
      getCustomerProductDetails(GenericParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCustomersProductsDetails + params.paramToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => CustomerProductDetailsModel.fromJson(json),
    );
    return await GenericHttpImpl<CustomerProductDetailsModel>()(model);
  }
}
