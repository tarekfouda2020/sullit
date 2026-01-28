import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class ProductImageWidget extends StatefulWidget {
  final String url;
  const ProductImageWidget({super.key, required this.url});

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget>
    with AutomaticKeepAliveClientMixin {
  late final int _memCacheWidth;
  late final int _memCacheHeight;

  @override
  void initState() {
    super.initState();
    _initializeCacheSettings();
  }

  void _initializeCacheSettings() {
    final dpr = WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

    // CRITICAL: Small memory cache to prevent OOM crashes
    // NO disk cache to prevent storage bloat with thousands of images
    // The default cached_network_image will handle minimal disk caching

    final memCacheSize = (140 * dpr).round();
    _memCacheWidth = memCacheSize.clamp(140, 240); // Reduced from 280
    _memCacheHeight = memCacheSize.clamp(140, 240); // Reduced from 280
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin

    return CachedImage(
      fit: BoxFit.contain,
      haveRadius: true,
      bgColor: const Color(0xffededed),
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(Dimens.dp12),
      ),
      url: _safeUrl(),
      memCacheWidth: _memCacheWidth,
      memCacheHeight: _memCacheHeight,
      // NO maxWidthDiskCache and maxHeightDiskCache specified
      // This prevents downloading and storing full-size images locally
      // Only decoded thumbnails are cached in memory
    );
  }

  String _safeUrl() {
    try {
      return Uri.encodeFull(widget.url);
    } catch (_) {
      return widget.url;
    }
  }

  @override
  bool get wantKeepAlive =>
      true; // Prevents unnecessary rebuilds in paginated lists
}

// import 'package:flutter/material.dart';
// import 'package:flutter_tdd/core/constants/dimens.dart';
// import 'package:flutter_tdd/core/widgets/CachedImage.dart';
//
// class ProductImageWidget extends StatefulWidget {
//   final String url;
//
//   const ProductImageWidget({super.key, required this.url});
//
//   @override
//   ProductImageWidgetState createState() => ProductImageWidgetState();
// }
//
// class ProductImageWidgetState extends State<ProductImageWidget> with AutomaticKeepAliveClientMixin {
//   late final int _memCacheWidth;
//   late final int _memCacheHeight;
//   late final int _maxWidthDiskCache;
//   late final int _maxHeightDiskCache;
//   late final String _safeUrl;
//
//   @override
//   void initState() {
//     super.initState();
//
//     const baseSize = 160;
//     final dpr = WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
//
//     final cacheSize = (baseSize * dpr).round();
//     _memCacheWidth = cacheSize.clamp(200, 480);
//     _memCacheHeight = cacheSize.clamp(200, 480);
//     _maxWidthDiskCache = cacheSize.clamp(300, 600);
//     _maxHeightDiskCache = cacheSize.clamp(300, 600);
//     _safeUrl = _safeEncode(widget.url);
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     precacheImage(NetworkImage(_safeUrl), context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//
//     return CachedImage(
//       fit: BoxFit.contain,
//       haveRadius: true,
//       bgColor: const Color(0xffededed),
//       borderRadius: const BorderRadius.vertical(
//         top: Radius.circular(Dimens.dp12),
//       ),
//       url: _safeUrl,
//       memCacheWidth: _memCacheWidth,
//       memCacheHeight: _memCacheHeight,
//       maxWidthDiskCache: _maxWidthDiskCache,
//       maxHeightDiskCache: _maxHeightDiskCache,
//     );
//   }
//
//   String _safeEncode(String url) {
//     try {
//       return Uri.encodeFull(url);
//     } catch (_) {
//       return url;
//     }
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }
