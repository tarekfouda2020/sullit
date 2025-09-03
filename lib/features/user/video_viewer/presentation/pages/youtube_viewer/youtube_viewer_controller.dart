part of 'youtube_viewer_imports.dart';

class YoutubeViewerController {
  late YoutubePlayerController youtubeController;
  final GenericBloc<YoutubePlayerController?> youtubeCubit = GenericBloc(null);

  YoutubeViewerController(String video) {
    var videoLink = convertLink(video);
    youtubeController = YoutubePlayerController.fromVideoId(
      videoId: videoLink,
      autoPlay: true,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    youtubeCubit.onUpdateData(youtubeController);
  }

  String convertLink(String video) {
    String? videoId;
    videoId = YoutubePlayerController.convertUrlToId(video);
    return videoId ?? "";
  }
}
