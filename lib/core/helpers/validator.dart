import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/video_url_validator.dart';

extension Validator on String {
  String? noValidate() {
    return null;
  }

  String? validateEmpty({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    }
    return null;
  }

  String? validateName({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (length < 8 || length > 30) {
      return message ?? tr("validateName");
    }
    return null;
  }

  String? validateAddress({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (length < 5 || length > 100) {
      return message ?? tr("validateName");
    }
    return null;
  }

  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (!RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this)) {
      return message ?? tr("passValidation");
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? tr("mailValidation");
    }
    return null;
  }

  String? validateEmailORNull({String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? tr("mailValidation");
      }
    }
    return null;
  }

  String? validatePhone({String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? tr("phoneValidation");
    }
    return null;
  }

  String? validatePhoneOrNull({String? message}) {
    if (trim().isEmpty) {
      return null;
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? tr("phoneValidation");
    }
    return null;
  }

  String? validatePasswordConfirm({required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? tr("fillField");
    } else if (this != pass) {
      return message ?? tr("confirmValidation");
    }
    return null;
  }

  String? validateVideoUrl(
      VideoURLValidator urlValidator, VideoProvider? model, String url) {
   if(model!=null){
     if (model.provider == 'youtube') {
       bool validate = urlValidator.validateYouTubeVideoURL(url: url);
       if (!validate) {
         return tr('linkValidation');
       }
     } else if (model.provider == 'dailymotion') {
       bool validate = urlValidator.validateDailyMotionVideoURL(url: url);
       if (!validate) {
         return tr('linkValidation');
       }
     } else if (model.provider == 'vimeo') {
       bool validate = urlValidator.validateVimeoVideoURL(url: url);
       if (!validate) {
         return tr('linkValidation');
       }
     } else {
       return null;
     }
     return null;
   }else{
     return null;
   }
  }
}

String? validateDropDown(dynamic model, {String? message}) {
  if (model == null) {
    return message ?? tr("fillField");
  }
  return null;
}

String? noValidateDropDown() {
  return null;
}
