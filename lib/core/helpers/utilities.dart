import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/base/data/enums/lang_type_enum.dart';
import 'package:geocode/geocode.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_toast.dart';

@lazySingleton
class Utilities {
  void copyToClipBoard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then(
      (value) {
        CustomToast.showSnakeBar(tr("copiedSuccessfully"),
            type: ToastType.success);
      },
    );
  }

  void openAppInStore() {
    String url = "";
    if (Platform.isAndroid) {
      String id = AppConstants.instance.appId;
      url = "https://play.google.com/store/apps/details?id=$id";
    }
    if (Platform.isIOS) {
      String id = AppConstants.instance.iosAppId;
      url = "https://apps.apple.com/us/app/id$id";
    }
    var uri = Uri.parse(url);
    launchUrl(uri);
  }

  Future<PermissionStatus> getContactsPermission() async {
    await Permission.contacts.request();
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ?? PermissionStatus.granted;
    } else {
      return permission;
    }
  }

  String cleanHtml(String html) {
    return html
        .replaceAll(RegExp(r'<span[^>]*>|</span>'), '')
        .replaceAll(RegExp(r'<o:p>.*?</o:p>'), '')
        .replaceAll(RegExp(r'style="[^"]*"'), '')
        .replaceAll(RegExp(r'class="[^"]*"'), '')
        .replaceAll(RegExp(r'<br\s*/?>'), '')
        .replaceAll(RegExp(r'&nbsp;'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  bool isHtml(String text) {
    return text.contains(RegExp(r'<[a-zA-Z][^>]*>'));
  }

  /// Formats a plain-text product description into structured paragraphs.
  /// Detects section headers and bullet points, adding proper line breaks.
  String formatDescription(String text) {
    if (isHtml(text)) return text;

    // Step 1: put each bullet on its own line
    String result = text.replaceAll(' • ', '\n• ');

    // Step 2: section headers appear after ". " and immediately before "\n•"
    // e.g. "...cooking. Product details\n•" → "...cooking.\n\nProduct details\n•"
    result = result.replaceAllMapped(
      RegExp(r'\. ([A-Z][^.•\n]+)\n•'),
      (m) => '.\n\n${m.group(1)}\n•',
    );

    // Step 3: trailing sentence after the last bullet
    // e.g. "• Serve hot... Order it now..." → "• Serve hot...\n\nOrder it now..."
    result = result.replaceAllMapped(
      RegExp(r'(• [^\n]+)\. ([A-Z][^•\n]+\.)$'),
      (m) => '${m.group(1)}.\n\n${m.group(2)}',
    );

    return result.trim();
  }

  String parseCurrency(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;

    final Map<String, String> currencyMap = {
      "د.إ": "AED",
      "ر.س": "SAR",
      "ج.م": "EGP",
      "د.ك": "KWD",
    };

    final regExp = RegExp(r"([^\d\s]+)\s*([\d.,]+)");

    return text.replaceAllMapped(regExp, (match) {
      String currencyPart = match.group(1)!.trim();
      String numberPart = match.group(2)!.trim();

      if ((lang == LangCodeHelper.langEN || lang == LangCodeHelper.langBN) &&
          currencyMap.containsKey(currencyPart)) {
        currencyPart = currencyMap[currencyPart]!;
      }

      final double value = num.parse(numberPart.replaceAll(',', '')).toDouble();
      final formattedNumber = NumberFormat("#,##0.00", lang).format(value);

      return "$formattedNumber $currencyPart";
    });
  }

  String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  Future<List<File>> getImages(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    final ImagePicker picker = ImagePicker();
    final List<XFile> photos = await picker.pickMultiImage();
    if (photos.isNotEmpty) {
      List<File> imagesFile = photos.map((e) => File(e.path)).toList();
      return imagesFile;
    } else {
      return [];
    }
  }

  String getPrice(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    // String lang = GlobalState.instance.get("lang");
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;
    final RegExp regExp = RegExp(r"^([^\d]+)?([\d.,]+)$");
    final match = regExp.firstMatch(text);
    if (match == null) return "0.00";
    String numberPart = match.group(2)!.replaceAll(",", "").trim();
    double value = double.tryParse(numberPart) ?? 0.0;

    return NumberFormat("#,##0.00", lang).format(value);
  }

  String getCurrency(String text) {
    BuildContext ctx = getIt<GlobalContext>().context();
    // String lang = GlobalState.instance.get("lang");
    String lang = ctx.read<DeviceCubit>().state.model.locale.languageCode;
    final RegExp regExp = RegExp(r"^([^\d]+)([\d.,]+)$");
    final match = regExp.firstMatch(text);
    if (match == null) return "";
    String currencyPart = match.group(1)!.trim();
    final Map<String, String> currencyMap = {
      "د.إ": "AED",
      "ر.س": "SAR",
      "ج.م": "EGP",
      "د.ك": "KWD",
    };
    if (lang == "en" && currencyMap.containsKey(currencyPart)) {
      return currencyMap[currencyPart]!;
    }
    return currencyPart;
  }

  String customizePhoneNumber(String phone, String? code) {
    String phoneNumber = "";
    if (phone.startsWith("0")) {
      phoneNumber = phone.replaceFirst("0", code ?? "+20");
    } else {
      phoneNumber = "${(code ?? "+20")}$phone";
    }
    return phoneNumber;
  }

  Future<File?> getImageFile(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }

  Future<List<File>> getImagesFiles(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (result != null) {
      List<File> imagesFiles = result.paths.map((e) => File("$e")).toList();
      return imagesFiles;
    }
    return [];
  }

  /// stored lang in sharedPref & DeviceCubit is use for local translates
  /// while stored lang in global state is use for back-end
  /// back-end lang code is different from local lang code

  Future<void> changeLanguage(String lang, BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(LangCodeHelper.langKey, lang);
    if (lang == LangCodeHelper.langAR) {
      lang = LangTypeEnum.arabic.getLangCode();
    }
    if (lang == LangCodeHelper.langBN) {
      lang = LangTypeEnum.bangladesh.getLangCode();
    }
    if (lang == LangCodeHelper.langUR) {
      lang = LangTypeEnum.urdu.getLangCode();
    }
    GlobalState.instance.set(LangCodeHelper.langKey, lang);
  }

  Future<File?> getAttachmentFile(FileType fileType,
      {List<String>? allowedExtensions}) async {
    if (fileType == FileType.any) {
      return await getAPdfFile();
    }
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowMultiple: false,
        allowedExtensions:
            fileType == FileType.custom ? allowedExtensions : null);
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }

  Future<File?> getAPdfFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        allowedExtensions: ['pdf']);
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }

  Future<List<File>> getPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true, type: FileType.custom, allowedExtensions: ['pdf']);
    if (result != null) {
      List<File> files = result.paths.map((path) => File("$path")).toList();
      return files;
    } else {
      return [];
    }
  }

  /// used to get the current store path
  Future<String> getFilePath() async {
    String sdPath = "";
    Directory tempDir = await getTemporaryDirectory();
    sdPath = tempDir.path;
    var d = Directory(sdPath);
    if (!d.existsSync()) {
      d.createSync(recursive: true);
    }
    String storagePath = "$sdPath/${DateTime.now().toIso8601String()}.m4a";
    return storagePath;
  }

  double? extractFormattedNumberToDouble(String text) {
    final RegExp numberRegex = RegExp(r'[\d,]+(\.\d+)?');
    final match = numberRegex.firstMatch(text);
    if (match != null) {
      String number = match.group(0)!;
      number = number.replaceAll(',', '');
      try {
        return double.parse(number);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  String handleFullPhone(BuildContext context, String phone) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == LangCodeHelper.langAR) {
      var split = phone.split("");
      split.removeAt(0);
      var phoneWithoutPlus = split.join();
      return "$phoneWithoutPlus+";
    } else {
      return phone;
    }
  }

  String formatAmount(String amount, {bool applyDashSeperate = true}) {
    // Handle range case like "10.00 - 40.00"
    if (amount.contains('-') && applyDashSeperate) {
      final values = amount.split('-').map((e) => e.trim()).toList();
      if (values.length == 2) {
        return '${_formatSingle(values[0])} - ${_formatSingle(values[1])}';
      }
    }
    // Default: single number
    return _formatSingle(amount);
  }

  String _formatSingle(String value) {
    final parsed = double.tryParse(value.cleanNumber()) ?? 0;
    final intValue = parsed.toStringAsFixed(2);

    final formattedInteger = intValue.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match.group(1)},',
    );

    return formattedInteger;
  }

  Future<void> popManyTimes(BuildContext context, int times) async {
    for (int i = 0; i < times; i++) {
      if (context.router.canPop()) {
        context.router.pop();
        await Future.delayed(const Duration(milliseconds: 150));
      } else {
        break;
      }
    }
  }

  String convertDigitsToLatin(String s) {
    var sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }
}
