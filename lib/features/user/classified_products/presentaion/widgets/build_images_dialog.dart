part of 'classified_products_w_imports.dart';

class BuildImagesDialog extends StatelessWidget {
  final FileImageType type;
  final ImageType imgType;
  final String? extension;
  final void Function(List<FileDomainModel> files) onAddFiles;

  const BuildImagesDialog({
    Key? key,
    required this.type,
    required this.imgType,
    required this.onAddFiles,
    this.extension,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GenericBloc<int> pagesBloc = GenericBloc(0);
    return DefaultTabController(
      length: 2,
      child: AlertDialog(
        backgroundColor: context.colors.customBackground,
        content: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: pagesBloc,
            builder: (context, state) {
              return Column(
                children: [
                  const BuildImagesTabs(),
                  Expanded(
                    child: TabBarView(
                      children: [
                        BuildSelectFile(
                          extension: extension,
                          type: type,
                          imgType: imgType,
                          onAddFiles: (List<FileDomainModel> files) =>
                              onAddFiles(files),
                        ),
                        Visibility(
                          visible: type == FileImageType.multiImage,
                          replacement: BuildUploadFiles(type: imgType),
                          child: const BuildMultiImages(),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
