part of 'vimeo_viewer_imports.dart';

class VimeoViewer extends StatefulWidget {
  final String videoLink;

  const VimeoViewer({super.key, required this.videoLink});

  @override
  _VimeoViewerState createState() => _VimeoViewerState();
}

class _VimeoViewerState extends State<VimeoViewer> {
  late VimeoViewerController controller;

  @override
  void initState() {
    controller = VimeoViewerController(widget.videoLink);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Video Viewer"),
      body: Center(
        child: SizedBox(
          height: 250.spMin,
          child: VimeoPlayer(
            videoId: controller.vimeoVideoUrl,
          ),
        ),
      ),
    );
  }
}
