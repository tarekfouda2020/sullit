
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
