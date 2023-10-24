part of 'classified_products_w_imports.dart';

class BuildAddFilesBtn extends StatelessWidget {
  final GenericBloc<List<FileDomainModel>> filesBloc;
  final void Function(List<FileDomainModel> files) onAddFiles;

  const BuildAddFilesBtn(
      {super.key, required this.filesBloc, required this.onAddFiles});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<FileDomainModel>>,
        GenericState<List<FileDomainModel>>>(
      bloc: filesBloc,
      builder: (context, state) {
        return Visibility(
          visible: state.data
              .where((element) => element.selected)
              .toList()
              .isNotEmpty,
          child: DefaultButton(
            height: Dimens.dp30.h,
            width: Dimens.dp128.w,
            margin: EdgeInsets.zero,
            title: tr('addFiles'),
            onTap: () => onAddFiles(
              state.data.where((element) => element.selected).toList(),
            ),
          ),
        );
      },
    );
  }
}
