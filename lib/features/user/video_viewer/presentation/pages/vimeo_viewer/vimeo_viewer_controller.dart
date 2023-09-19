part of 'vimeo_viewer_imports.dart';

class VimeoViewerController {
  late String vimeoVideoUrl;

  VimeoViewerController(String video) {
    vimeoVideoUrl = video.split('/').last;
  }
}
