import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:photo_view/photo_view.dart';

class ImageZoom extends StatefulWidget {
  final String image;

  const ImageZoom({Key? key, required this.image}) : super(key: key);

  @override
  State<ImageZoom> createState() => _ImageZoomState();
}

class _ImageZoomState extends State<ImageZoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            size: Dimens.dp20.sp,
            color: Colors.white,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: PhotoView(
          backgroundDecoration: const BoxDecoration(color: Colors.black87),
          imageProvider: NetworkImage(widget.image),
        ),
      ),
    );
  }
}
