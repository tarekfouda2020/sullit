
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class ProductImageWidget extends StatelessWidget {
  final String url;
  const ProductImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    return  CachedImage(
      fit: BoxFit.contain,
      haveRadius: true,
      bgColor: const Color(0xffededed),
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(Dimens.dp12),
      ),
      url: _safeUrl(),
      memCacheWidth: (160 * dpr).round().clamp(180, 350),
      memCacheHeight: (160 * dpr).round().clamp(180, 350),
      maxWidthDiskCache: 400,
      maxHeightDiskCache: 400,
      // url: safeImageUrl(widget.productModel.thumbnailImage),
    );
  }


  String _safeUrl() {
    try {
      return Uri.encodeFull(url);
    } catch (_) {
      return url;
    }
  }


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