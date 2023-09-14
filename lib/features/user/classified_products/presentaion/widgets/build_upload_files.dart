import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_pdf_view.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_upload_single_file.dart';

class BuildUploadFiles extends StatelessWidget {
  final ImageType type ;
  const BuildUploadFiles({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Visibility(
     visible: type == ImageType.pdf,
     replacement: const BuildUploadSingleFile(),
     child: const BuildPdfFile(),
   );
  }
}
