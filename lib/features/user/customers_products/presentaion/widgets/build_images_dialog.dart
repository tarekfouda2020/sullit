import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/sort.dart';
import 'package:flutter_tdd/features/user/customers_products/presentaion/manager/helpers/add_image_helper.dart';

class BuildImagesDialog extends StatelessWidget {
  const BuildImagesDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GenericBloc<int> pagesBloc = GenericBloc(0);
    return AlertDialog(
      backgroundColor: context.colors.customBackground,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: pagesBloc,
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => pagesBloc.onUpdateData(0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: state.data == 0
                            ? CustomDecoration()
                            : BoxDecoration(
                                color: context.colors.customBackground),
                        child: Text(
                          'Select File',
                          style: AppTextStyle.s12_w400(
                            color: context.colors.black,
                          ),
                        ),
                      ),
                    ),
                    Gaps.hGap10,
                    GestureDetector(
                      onTap: () => pagesBloc.onUpdateData(1),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: state.data == 1
                            ? CustomDecoration()
                            : BoxDecoration(
                                color: context.colors.customBackground),
                        child: Text(
                          'Upload File',
                          style: AppTextStyle.s12_w400(
                            color: context.colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.clear, size: 20),
                      padding: EdgeInsets.all(8.0.r),
                      color: context.colors.grey,
                      onPressed: () {
                        AutoRouter.of(context).pop(context);
                      },
                    )
                  ],
                ),
                PageView(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            DropdownTextField<Sort>(
                              fillColor: context.colors.white,
                              textSize: 12.sp,
                              itemAsString: (model) => (model).title,
                              showClearButton: false,
                              title: "Sort by",
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              dropKey:
                                  getIt<AddImageHelper>().serviceDropDownKey,
                              useName: true,
                              data: getIt<AddImageHelper>().sortTypes,
                              fontSize: 16.sp,
                              selectedItem:
                                  getIt<AddImageHelper>().selectedSort,
                              radius: BorderRadius.circular(5).r,
                              onChange: (value) =>
                                  getIt<AddImageHelper>().selectService(value),
                              validate: (value) => validateDropDown(value),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: true,
                                  groupValue: true,
                                  onChanged: (value) => value,
                                ),
                                Text(
                                  'Selected only',
                                  style: AppTextStyle.s12_w400(
                                      color: context.colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: CustomDecoration(),
                          child: Column(
                            children: [
                              CachedImage(
                                url: '',
                                height: 100.h,
                                width: 100.w,
                              ),
                              Text(
                                'Selected only',
                                style: AppTextStyle.s12_w400(
                                    color: context.colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
