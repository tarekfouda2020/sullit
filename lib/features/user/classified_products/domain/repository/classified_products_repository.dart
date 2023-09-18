import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/purchase_package_response_model/purchase_package_response_model.dart';
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
import 'package:flutter_tdd/features/user/classified_products/domain/models/purchase_package_response.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';

abstract class ClassifiedProductsRepository {
 Future<Either<Failure,List<FileDomainModel>>> getUploadedFiles (UploadedFilesParams params);
 Future<Either<Failure,List<VideoProvider>>> getVideoProviders (bool param);
 Future<Either<Failure,List<CusProductsCat>>> getCusProductsCats (bool param);
 Future<Either<Failure,List<CusProductBrand>>> getCusProductBrands (bool param);
 Future<Either<Failure, bool>> setUploadFile (File param);
 Future<Either<Failure, bool>> setUploadFiles (List<File> param);
 Future<Either<Failure, bool>> setAddClassifiedProducts (AddClassifiedProductParams param);
 Future<Either<Failure, ClassifiedProductsDomainModel>> getClassifiedProducts (bool param);
 Future<Either<Failure, CusProduct>> getClassifiedProduct (int param);
 Future<Either<Failure, bool>> updateClassifiedProduct (EditClassifiedProductParams params);
 Future<Either<Failure, List<CusPackage>>> getPackages (bool param);
 Future<Either<Failure, List<PaymentMethodDomainModel>>> getPaymentMethods (bool param);
 Future<Either<Failure,PurchasePackageResponse >> purchasePackage(PurchasePackageParams params);
}