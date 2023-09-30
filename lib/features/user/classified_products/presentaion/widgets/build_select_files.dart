import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/sort.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart';

class BuildSelectFile extends StatefulWidget {
  final String? extension;
  final FileImageType type;
  final ImageType imgType;
  final void Function (List<FileDomainModel> files) onAddFiles;

  const BuildSelectFile({
    Key? key,
    this.extension,
    required this.type,
    required this.imgType, required this.onAddFiles,
  }) : super(key: key);

  @override
  State<BuildSelectFile> createState() => _BuildSelectFileState();
}

class _BuildSelectFileState extends State<BuildSelectFile> {
  GenericBloc<List<FileDomainModel>> filesBloc = GenericBloc([]);
  GenericBloc<bool> selectedOnlyBloc = GenericBloc(true);
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    getIt<AddImageHelper>().getUploadedFiles(
      filesBloc: filesBloc,
      extension: widget.extension,
      search: searchController.text,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<FileDomainModel>>,
        GenericState<List<FileDomainModel>>>(
      bloc: filesBloc,
      builder: (context, state) {
        return Column(
          children: [
            GenericTextField(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              fillColor: context.colors.white,
              onChange: (val) => getIt<AddImageHelper>().getUploadedFiles(filesBloc: filesBloc, search: searchController.text,),
              controller: searchController,
              action: TextInputAction.search,
              validate: (value) => value!.validateEmpty(),
              hint: tr('searchFiles'),
              onSubmit: () =>
                  getIt<AddImageHelper>().getUploadedFiles(
                    filesBloc: filesBloc,
                    search: searchController.text,
                  ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: DropdownTextField<Sort>(
                    fillColor: context.colors.white,
                    textSize: 12.sp,
                    itemAsString: (model) => (model).title,
                    showClearButton: false,
                    title: tr('sortBy'),
                    hint: tr('sortBy'),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    dropKey: getIt<AddImageHelper>().serviceDropDownKey,
                    useName: true,
                    data: getIt<AddImageHelper>().sortTypes,
                    fontSize: 16.sp,
                    selectedItem: getIt<AddImageHelper>().selectedSort,
                    radius: BorderRadius
                        .circular(5)
                        .r,
                    onChange: (value) =>
                        getIt<AddImageHelper>().selectService(
                          value,
                          filesBloc,
                          searchController.text,
                        ),
                    validate: (value) => validateDropDown(value),
                  ),
                ),
                BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                  bloc: selectedOnlyBloc,
                  builder: (context, checkBoxState) {
                    return Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.r),
                              ),
                              checkColor: context.colors.white,
                              value: checkBoxState.data,
                              onChanged: (value) {
                                selectedOnlyBloc
                                    .onUpdateData(!checkBoxState.data);
                              }),
                          GestureDetector(
                            onTap: () =>
                                selectedOnlyBloc
                                    .onUpdateData(!checkBoxState.data),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0.r),
                              child: Text(
                                tr('selectedOnly'),
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.black,
                                ),
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
            Visibility(
              visible: state is GenericUpdateState,
              replacement: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.r,
                    mainAxisSpacing: 15.r,
                    crossAxisCount: 2,
                    childAspectRatio: .9,
                  ),
                  children: List.generate(
                    10,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      decoration:  CustomDecoration(),
                      child: Column(
                        children: [
                          BuildShimmerItem(
                            child: CachedImage(
                              url: '',
                              height: 95.h,
                              imgMargin: EdgeInsets.only(bottom: 10.r),
                              width: 100.w,
                            ),
                          ),
                          const BuildShimmerItem(
                            height: 7,
                            width: 120,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              child: Visibility(
                visible: state.data.isNotEmpty,
                replacement: Padding(
                  padding: EdgeInsets.only(top: 250.r),
                  child: Center(
                    child: Text(
                      tr('noFilesFounded'),
                      style: AppTextStyle.s14_w600(
                        color: context.colors.grey,
                      ),
                    ),
                  ),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .6,
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15.r,
                      mainAxisSpacing: 15.r,
                      crossAxisCount: 2,
                      childAspectRatio: .9,
                    ),
                    children: List.generate(
                      state.data.length,
                      (index) => GestureDetector(
                        onTap: () {
                          if (widget.type == FileImageType.singleImage) {
                            for (var e in state.data) {
                              e.selected = false;
                            }
                          }
                          state.data[index].selected =
                              !state.data[index].selected;
                          filesBloc.onUpdateData(state.data);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: state.data[index].selected
                              ? CustomDecoration().copyWith(
                                  border: Border.all(
                                    color: context.colors.primary,
                                  ),
                                )
                              : CustomDecoration(),
                          child: Column(
                            children: [
                              CachedImage(
                                url: state.data[index].url,
                                height: 100.h,
                                imgMargin: EdgeInsets.only(bottom: 10.r),
                                width: 100.w,
                              ),
                              Text(
                                overflow: TextOverflow.ellipsis,
                                state.data[index].fileName,
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: filesBloc.state.data
                  .where((element) => element.selected)
                  .toList()
                  .isNotEmpty,
              child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pop();
                  widget.onAddFiles(filesBloc.state.data
                      .where((element) => element.selected)
                      .toList());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        tr('addFiles'),
                        style:
                        AppTextStyle.s12_w400(color: context.colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
