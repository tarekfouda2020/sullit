import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/motion_viewer/motion_viewer_imports.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/vimeo_viewer/vimeo_viewer_imports.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/youtube_viewer/youtube_viewer_imports.dart';

const List<AutoRoute> videoRoutes = [
  AdaptiveRoute(page: YoutubeViewer),
  AdaptiveRoute(page: MotionViewer),
  AdaptiveRoute(page: VimeoViewer),
];
