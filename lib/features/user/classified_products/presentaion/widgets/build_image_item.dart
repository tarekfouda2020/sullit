part of 'classified_products_w_imports.dart';

class BuildImageItem extends StatelessWidget {
  final FileDomainModel model;
  final FileImageType type;
  final GenericBloc<List<FileDomainModel>> filesBloc;

  const BuildImageItem(
      {super.key,
      required this.model,
      required this.type,
      required this.filesBloc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getIt<AddImageHelper>().onItemSelected(
        model: model,
        type: type,
        filesBloc: filesBloc,
      ),
      child: Container(
        padding: Dimens.paddingAll10PX,
        decoration: model.selected
            ? CustomDecoration()
                .copyWith(border: Border.all(color: context.colors.primary))
            : CustomDecoration(),
        child: Column(
          children: [
            Expanded(
              child: CachedImage(
                url: model.url,
                imgMargin: EdgeInsets.only(bottom: Dimens.dp10.r),
              ),
            ),
            Text(
              model.fileOriginalName,
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
