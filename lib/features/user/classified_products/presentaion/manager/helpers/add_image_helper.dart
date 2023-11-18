import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/widgets/custom_dropDown/CustomDropDown.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
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

  void selectService({
    required GenericBloc<List<FileDomainModel>> filesBloc,
    required GenericBloc<bool> selectedOnlyBloc,
    String? extension,
    String? search,
    Sort? model,
  }) {
    selectedSort = model;
    selectedOnlyBloc.onUpdateToInitState(false);
    getUploadedFiles(filesBloc, search ?? "", extension);
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

  Future<void> getPdf(GenericBloc<File?> fileBloc) async {
    var data = await getIt<Utilities>().getPdf();
    fileBloc.onUpdateData(data.first);
  }

  Future<void> setUploadFile(BuildContext context, File file) async {
    var data = await SetUploadFile().call(file);
    if (data) {
      CustomToast.showSimpleToast(msg: 'successfully sent.');
      AutoRouter.of(context).pop();
      return;
    }
  }

  Future<void> setUploadFiles(BuildContext context, List<File> files) async {
    var data = await SetUploadFiles().call(files);
    if (data) {
      CustomToast.showSimpleToast(msg: 'Successfully Uploaded.');
      AutoRouter.of(context).pop();
      return;
    }
  }

  Future<void> removeImages(
      int index, GenericBloc<List<File>> imagesBloc) async {
    if (imagesBloc.state.data.length > 1) {
      imagesBloc.state.data.removeAt(index);
      imagesBloc.onUpdateData(imagesBloc.state.data);
    } else {
      imagesBloc.state.data.removeAt(index);
      imagesBloc.onUpdateToInitState([]);
    }
  }

  Future<void> removeImage(GenericBloc<File?> imageBloc) async {
    return await imageBloc.onUpdateToInitState(null);
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

  Future<void> getUploadedFiles(GenericBloc<List<FileDomainModel>> filesBloc,
      String search, String? extension,
      {bool refresh = true}) async {
    var params = _setUploadedFilesParams(extension, search);
    var data = await GetUploadedFiles().call(params);
    filesBloc.onUpdateData(data);
  }

  void onItemSelected({
    required FileDomainModel model,
    required FileImageType type,
    required GenericBloc<List<FileDomainModel>> filesBloc,
  }) {
    if (type == FileImageType.singleImage) {
      for (var e in filesBloc.state.data) {
        e.selected = false;
      }
    }
    model.selected = !model.selected;
    filesBloc.onUpdateData(filesBloc.state.data);
  }

  void onSwitchImages(
      {required GenericBloc<List<FileDomainModel>> filesBloc,
      required String search,
      required String extension,
      required bool value}) {
    if (value) {
      filesBloc.onUpdateData(
          filesBloc.state.data.where((element) => element.selected).toList());
    } else {
      getIt<AddImageHelper>().getUploadedFiles(filesBloc, search, extension);
    }
  }

  UploadedFilesParams _setUploadedFilesParams(
      String? extension, String search) {
    return UploadedFilesParams(
      search: search,
      sort: selectedSort?.key,
      type: extension,
    );
  }
}
