part of 'youtube_viewer_imports.dart';

class YoutubeViewer extends StatefulWidget {
  final String videoLink;

  const YoutubeViewer({super.key, required this.videoLink});

  @override
  _YoutubeViewerState createState() => _YoutubeViewerState();
}

class _YoutubeViewerState extends State<YoutubeViewer> {
  late YoutubeViewerController controller;

  @override
  void initState() {
    controller = YoutubeViewerController(widget.videoLink);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('videoViewer')),
      body: Center(
        child: BlocBuilder<GenericBloc<YoutubePlayerController?>,
            GenericState<YoutubePlayerController?>>(
          bloc: controller.youtubeCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return YoutubePlayer(
                controller: state.data!,
              );
            } else {
              return getIt<LoadingHelper>().showLoadingView();
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.youtubeController.close();
    controller.youtubeCubit.onUpdateData(null);
  }
}
