part of 'classified_products_w_imports.dart';
// ignore_for_file: avoid_dynamic_calls

class BuildSelectFile extends StatelessWidget {
  final String? extension;
  final FileImageType type;
  final ImageType imgType;
  final void Function(List<FileDomainModel> files) onAddFiles;

  BuildSelectFile({
    Key? key,
    this.extension,
    required this.type,
    required this.imgType,
    required this.onAddFiles,
  }) : super(key: key);

  final GenericBloc<bool> selectedOnlyBloc = GenericBloc(false);
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<List<FileDomainModel>> filesBloc = GenericBloc([]);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BuildImagesFilter(
          filesBloc: filesBloc,
          searchController: searchController,
          selectedOnlyBloc: selectedOnlyBloc,
          extension: extension ?? "",
        ),
        Flexible(
          child: GenericListView(
            type: ListViewType.gridApi,
            padding: Dimens.paddingVertical10PX,
            cubit: filesBloc,
            gridItemHeight: Dimens.dp160.spMin,
            runSpacing: 15.r,
            spacing: 15.r,
            params: [
              filesBloc,
              searchController.text,
              extension,
            ],
            onRefresh: getIt<AddImageHelper>().getUploadedFiles,
            itemBuilder: (_, index, item) => BuildImageItem(
              model: item,
              filesBloc: filesBloc,
              type: type,
            ),
            loadingWidget: const BuildLoadingImages(),
            emptyWidget: Center(
              child: Text(
                tr('noFilesFounded'),
                style: AppTextStyle.s14_w600(
                  color: context.colors.grey,
                ),
              ),
            ),
          ),
        ),
        BuildAddFilesBtn(filesBloc: filesBloc, onAddFiles: onAddFiles)
      ],
    );
  }
}
