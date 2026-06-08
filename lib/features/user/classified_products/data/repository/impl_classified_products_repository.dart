import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/classified_products_data_sources.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/edit_classified_product_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/purchase_package_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/uploaded_files_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_package.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_brand.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_cat.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/payment_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/purchase_package_response.dart';

@Injectable(as: ClassifiedProductsRepository)
class ImplClassifiedProductsRepository extends ClassifiedProductsRepository
    with ModelToDomain {
  var dataSources = getIt<ClassifiedProductsDataSources>();

  @override
  Future<Either<Failure, List<FileDomainModel>>> getUploadedFiles(
      UploadedFilesParams params) async {
    var result = await dataSources.getCusProducts(params);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, bool>> setUploadFile(File param) async {
    return await dataSources.setAddFile(param);
  }

  @override
  Future<Either<Failure, bool>> setUploadFiles(List<File> param) async {
    return await dataSources.setAddFiles(param);
  }

  @override
  Future<Either<Failure, List<VideoProvider>>> getVideoProviders(
      bool param) async {
    var result = await dataSources.getVideoProviders(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, CusProduct>> setAddClassifiedProducts(
      AddClassifiedProductParams params) async {
    var result = await dataSources.setAddClassifiedProduct(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<CusProductBrand>>> getCusProductBrands(
      bool param) async {
    var result = await dataSources.getCusProductsBrands(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<CusProductsCat>>> getCusProductsCats(
      bool param) async {
    var result = await dataSources.getCusProductsCats(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, ClassifiedProductsDomainModel>> getClassifiedProducts(
      bool param) async {
    var result = await dataSources.getClassifiedProducts(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, CusProduct>> getClassifiedProduct(
      GenericParams param) async {
    var result = await dataSources.getClassifiedProduct(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, CusProduct>> updateClassifiedProduct(
      EditClassifiedProductParams params) async {
    var result = await dataSources.editClassifiedProduct(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<CusPackage>>> getPackages(bool param) async {
    var result = await dataSources.getPackages(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<PaymentMethodDomainModel>>> getPaymentMethods(
      bool param) async {
    var result = await dataSources.getPaymentMethods(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, PurchasePackageResponse>> purchasePackage(
      PurchasePackageParams params) async {
    var result = await dataSources.purchasePackage(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, String>> deleteProduct(int param) async {
    return await dataSources.deleteProduct(param);
  }

  @override
  Future<Either<Failure, bool>> changeStatus(int param) async {
    return await dataSources.changeStatus(param);
  }
}
