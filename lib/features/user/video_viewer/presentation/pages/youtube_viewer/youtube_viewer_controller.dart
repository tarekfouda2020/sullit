part of 'youtube_viewer_imports.dart';

class YoutubeViewerController {
  late YoutubePlayerController youtubeController;
  final GenericBloc<YoutubePlayerController?> youtubeCubit = GenericBloc(null);

  YoutubeViewerController(String video) {
    var videoLink = convertLink(video);
    youtubeController = YoutubePlayerController(
      initialVideoId: videoLink,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    youtubeController.addListener(() { });
    youtubeCubit.onUpdateData(youtubeController);
  }

  String convertLink(String video) {
    String? videoId;
    videoId = YoutubePlayer.convertUrlToId(video);
    return videoId ?? "";
  }
}
