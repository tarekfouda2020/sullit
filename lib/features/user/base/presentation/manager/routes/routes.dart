import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/more/more_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/video_view/video_view_imports.dart';

const List<AutoRoute> baseRoute = [
  AdaptiveRoute(page: Home),
  AdaptiveRoute(page: More),
  AdaptiveRoute(page: VideoView),
];
