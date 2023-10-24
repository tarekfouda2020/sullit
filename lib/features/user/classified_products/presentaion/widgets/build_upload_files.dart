part of 'classified_products_w_imports.dart';

class BuildUploadFiles extends StatelessWidget {
  final ImageType type;

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
