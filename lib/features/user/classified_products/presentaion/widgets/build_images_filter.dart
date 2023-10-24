part of 'classified_products_w_imports.dart';

class BuildImagesFilter extends StatelessWidget {
  final TextEditingController searchController;
  final GenericBloc<bool> selectedOnlyBloc;
  final GenericBloc<List<FileDomainModel>> filesBloc;
  final String extension;

  const BuildImagesFilter({
    super.key,
    required this.filesBloc,
    required this.searchController,
    required this.selectedOnlyBloc,
    required this.extension,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          margin: Dimens.paddingVertical10PX,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          fillColor: context.colors.white,
          onChange: (val) => getIt<AddImageHelper>().getUploadedFiles(
            filesBloc,
            searchController.text,
            extension,
          ),
          controller: searchController,
          action: TextInputAction.search,
          validate: (value) => value!.validateEmpty(),
          hint: tr('searchFiles'),
          onSubmit: () => getIt<AddImageHelper>().getUploadedFiles(
            filesBloc,
            searchController.text,
            extension,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: DropdownTextField<Sort>(
                fillColor: context.colors.white,
                itemAsString: (model) => (model).title,
                margin: EdgeInsets.zero,
                contentPadding: Dimens.paddingHorizontal5PX,
                arrowBtnPadding: EdgeInsets.zero,
                clearBtnPadding: EdgeInsets.zero,
                title: tr('sortBy'),
                hint: tr('sortBy'),
                dropKey: getIt<AddImageHelper>().serviceDropDownKey,
                useName: true,
                data: getIt<AddImageHelper>().sortTypes,
                selectedItem: getIt<AddImageHelper>().selectedSort,
                onChange: (value) => getIt<AddImageHelper>().selectService(
                  filesBloc: filesBloc,
                  extension: extension,
                  model: value,
                  search: searchController.text,
                ),
                validate: (value) => validateDropDown(value),
              ),
            ),
            BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: selectedOnlyBloc,
              builder: (context, checkBoxState) {
                return Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: Dimens.borderRadius3PX,
                        ),
                        checkColor: context.colors.white,
                        value: checkBoxState.data,
                        onChanged: (value) {
                          selectedOnlyBloc.onUpdateData(!checkBoxState.data);
                          getIt<AddImageHelper>().onSwitchImages(
                            filesBloc: filesBloc,
                            search: searchController.text,
                            extension: extension,
                            value: value!,
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () =>
                            selectedOnlyBloc.onUpdateData(!checkBoxState.data),
                        child: Text(
                          tr('selectedOnly'),
                          style: AppTextStyle.s12_w400(
                            color: context.colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
