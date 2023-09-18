import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/classified_products_model/classified_products_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_package_model/cus_package_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_product_model/cus_product_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_brand_model/cus_products_brand_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_cat_model/cus_products_cat_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/file_model/file_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/purchase_package_response_model/purchase_package_response_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/video_provider_model/video_provider_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/edit_classified_product_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/purchase_package_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/uploaded_files_params.dart';

abstract class ClassifiedProductsDataSources {
  Future<Either<Failure,List<FileModel>>> getCusProducts(UploadedFilesParams params);
  Future<Either<Failure,List<CusProductsCatModel>>> getCusProductsCats(bool param);
  Future<Either<Failure,List<CusProductsBrandModel>>> getCusProductsBrands(bool param);
  Future<Either<Failure,List<VideoProviderModel>>> getVideoProviders(bool param);
  Future<Either<Failure,bool>> setAddFile(File param);
  Future<Either<Failure,bool>> setAddFiles(List<File> param);
  Future<Either<Failure,bool>> setAddClassifiedProduct(AddClassifiedProductParams params);
  Future<Either<Failure,ClassifiedProductsModel>> getClassifiedProducts(bool param);
  Future<Either<Failure,CusProductModel>> getClassifiedProduct (int param);
  Future<Either<Failure,bool>> editClassifiedProduct (EditClassifiedProductParams params);
  Future<Either<Failure,List<CusPackageModel>>> getPackages (bool param);
  Future<Either<Failure,List<PaymentMethodModel>>> getPaymentMethods (bool param);
  Future<Either<Failure,PurchasePackageResponseModel>> purchasePackage(PurchasePackageParams params);
}