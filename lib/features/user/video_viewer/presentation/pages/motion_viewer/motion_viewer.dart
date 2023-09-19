part of 'motion_viewer_imports.dart';

class MotionViewer extends StatefulWidget {
  final String videoLink;

  const MotionViewer({super.key, required this.videoLink});

  @override
  _MotionViewerState createState() => _MotionViewerState();
}

class _MotionViewerState extends State<MotionViewer> {
  late MotionViewerController controller;

  @override
  void initState() {
    controller = MotionViewerController(widget.videoLink);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Video Viewer"),
      body: Center(
        child: BlocBuilder<GenericBloc<ChewieController?>,
            GenericState<ChewieController?>>(
          bloc: controller.videoCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Chewie(controller: state.data!);
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
    controller.videoController.dispose();
    controller.chewieController.dispose();
    controller.videoCubit.onUpdateData(null);

  }
}
