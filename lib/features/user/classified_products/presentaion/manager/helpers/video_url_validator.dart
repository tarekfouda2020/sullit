import 'video_url_regex.dart';

class VideoURLValidator {
  bool validateYouTubeVideoURL({required String url}) {
    final RegExp pattern = RegExp(VideoURLRegex.youtubeRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }

  bool validateFaceBookVideoURL({required String url}) {
    RegExp pattern = RegExp(VideoURLRegex.facebookRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }

  bool validateVimeoVideoURL({required String url}) {
    final RegExp pattern = RegExp(VideoURLRegex.vimeoRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }

  bool validateDailyMotionVideoURL({required String url}) {
    final RegExp pattern = RegExp(VideoURLRegex.dailymotionRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }

   bool validateWistiaVideoURL({required String url}) {
    final RegExp pattern = RegExp(VideoURLRegex.wistiaRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }
}