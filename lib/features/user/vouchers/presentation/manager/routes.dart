import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/motion_viewer/motion_viewer_imports.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/vimeo_viewer/vimeo_viewer_imports.dart';
import 'package:flutter_tdd/features/user/video_viewer/presentation/pages/youtube_viewer/youtube_viewer_imports.dart';
import 'package:flutter_tdd/features/user/vouchers/presentation/pages/my_vouchers/my_vouchers_imports.dart';

const List<AutoRoute> vouchersRoutes = [
  AdaptiveRoute(page: MyVouchers),

];
