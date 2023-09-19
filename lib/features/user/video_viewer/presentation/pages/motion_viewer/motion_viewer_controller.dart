part of 'motion_viewer_imports.dart';

class MotionViewerController {
  late VideoPlayerController videoController;
  late ChewieController chewieController;
  final GenericBloc<ChewieController?> videoCubit = GenericBloc(null);

  MotionViewerController(String link) {
    initVideoLink(link);
  }

  void initVideoLink(String link) async {
    videoController = VideoPlayerController.networkUrl(Uri.parse(link));
    await videoController.initialize();
    chewieController = ChewieController(
        videoPlayerController: videoController,
        autoPlay: true,
        looping: false,
        showControlsOnInitialize: true);
    videoCubit.onUpdateData(chewieController);
  }
}
