import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart';
import 'package:flutter_tdd/core/http/models/download_request_model.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../localization/localization_methods.dart';

class FileHelper {
  Future<String> getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        // directory = Directory('/storage/emulated/0/Download');
        // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
        // ignore: avoid_slow_async_io
        // if (!await directory.exists())
        directory = await getExternalStorageDirectory();
      }
    } catch (err, stack) {
      print("Cannot get download folder path");
      return "";
    }
    return directory?.path ?? "";
  }

  Future<File?> downloadFile({required String url}) async {
    String localFilePath = "${await getDownloadPath()}/${DateTime.now().toIso8601String()}.pdf";
    var params = DownloadRequestModel(
      url: url,
      localPath: localFilePath,
    );

    final response = await getIt.get<Download>().download(params);
    if (response.isRight()) {
      File file = File(localFilePath);
      OpenFile.open(localFilePath);
      return file;
    }
    return null;
  }


  Future<List<File>?> pickImagesFiles(BuildContext context, {required bool allowMulti}) async {
    List<File>? files;
    await showCupertinoModalPopup(
        context: context,
        useRootNavigator: false,
        builder: (context) {
          return CupertinoTheme(
            data:  CupertinoThemeData(
              brightness: Brightness.light,
              // primaryColor: Colors.teal,
              textTheme: CupertinoTextThemeData(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: context.colors.black,
                ),
              ),
            ),
            child: CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () async {
                    final file = await _onCameraPressed(context);
                    if (file != null) {
                      files = [file];
                    }
                    Navigator.pop(context);
                  },
                  child: Text(
                    tr("camera"),
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () async {
                    final images = await _pickImageFiles(context, allowMultiple: allowMulti);
                    if (images != null) {
                      files = images;
                    }
                    Navigator.pop(context);
                  },
                  child: Text(
                    tr("pick"),
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  tr("cancel"),
                  style: AppTextStyle.s18_w600(color: context.colors.primary),
                ),
              ),
            ),
          );
        });
    return files;
  }

  Future<File?> _onCameraPressed(BuildContext context) async {
    try {
      final picker = ImagePicker();
      XFile? pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 60,
      );
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } on PlatformException catch (e) {
      if (e.code == "camera_access_denied") {
        CustomToast.showSnakeBar(e.message,type: ToastType.error);
      }
      return null;
    }
  }


  Future<List<File>?> _pickImageFiles(
      BuildContext context, {
        bool allowMultiple = false,
      }) async {
    return getIt<Utilities>().getImagesFiles(context,);


}
}
