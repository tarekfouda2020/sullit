import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/widgets/custom_dropDown/CustomDropDown.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/uploaded_files_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/sort.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/get_uploaded_files.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/set_upload_file.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/use_cases/set_upload_files.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddImageHelper {
  final GlobalKey<DropdownSearchState> serviceDropDownKey = GlobalKey();

  List<Sort> sortTypes = [
    Sort(title: 'Sort by newest', key: 'newest'),
    Sort(title: 'Sort by oldest', key: 'oldest'),
    Sort(title: 'Sort by smallest', key: 'smallest'),
    Sort(title: 'Sort by largest', key: 'largest'),
  ];
  Sort? selectedSort;

  void selectService(Sort? model, GenericBloc<List<FileDomainModel>> filesBloc, String search) {
    selectedSort = model;
    getUploadedFiles(filesBloc: filesBloc, search: search);
  }

  Future<File?> getImage(BuildContext context, GenericBloc imageBloc) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageBloc.onUpdateData(image);
      return image;
    } else {
      return null;
    }
  }

  Future<void> getPdf (GenericBloc<File?> fileBloc) async {
    var data = await getIt<Utilities>().getPdf();
    fileBloc.onUpdateData(data.first);
  }

  Future<void> removePdf(GenericBloc<FileDomainModel?> fileBloc)async{
    fileBloc.onUpdateData(null);
  }

  Future<void> removeExitedPdf(GenericBloc<FileDomainModel?> fileBloc)async{
    fileBloc.onUpdateData(null);
  }

  Future<void> setUploadFile (File file) async {
    var data = await SetUploadFile().call(file);
    if(data){
      CustomToast.showSimpleToast(msg: 'successfully sent.');
      return ;
    }
  }

  Future<void> setUploadFiles (List<File> files) async {
    var data = await SetUploadFiles().call(files);
    if(data){
      CustomToast.showSimpleToast(msg: 'successfully sent.');
      return ;
    }
  }

  Future<void> removeImages(
      int index, GenericBloc<List<File>> imagesBloc) async {
    imagesBloc.state.data.removeAt(index);
    imagesBloc.onUpdateData(imagesBloc.state.data);
  }

  Future<void> removeImage(GenericBloc<File?> imageBloc) async {
    return await imageBloc.onUpdateData(null);
  }

  Future<List<File>> getImages(
      BuildContext context, GenericBloc<List<File>> imagesBloc) async {
    var images = await getIt<Utilities>().getImages(context);
    if (images != []) {
      imagesBloc.state.data.addAll(images);
      imagesBloc.onUpdateData(imagesBloc.state.data);
      return images;
    } else {
      return [];
    }
  }

  Future<void> getUploadedFiles({required GenericBloc<List<FileDomainModel>> filesBloc, String? extension,required String search}) async {
    var params = _setUploadedFilesParams(extension, search);
    var data = await GetUploadedFiles().call(params);
    filesBloc.onUpdateData(data.reversed.toList());
  }


  UploadedFilesParams _setUploadedFilesParams(String? extension, String search) {
    return UploadedFilesParams(
        search: search,
        sort: selectedSort?.key,
        extension: extension,
    );
  }


}
