import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart';

class BuildMultiImages extends StatelessWidget {
  const BuildMultiImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GenericBloc<List<File>> imagesBloc = GenericBloc([]);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ).r,
      color: context.colors.customBackground,
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
            bloc: imagesBloc,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    ...List.generate(
                      state.data.length,
                      (index) => Container(
                        alignment: AlignmentDirectional.topStart,
                        height: 50,
                        width: 50,
                        margin: const EdgeInsetsDirectional.only(start: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          image: DecorationImage(
                            image: FileImage(
                              state.data[index],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: InkWell(
                            onTap: () => getIt<AddImageHelper>()
                                .removeImages(index, imagesBloc),
                            child: Icon(
                              Icons.clear,
                              color: context.colors.primary,
                              size: 15.r,
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () => getIt<AddImageHelper>().getImages(context, imagesBloc),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: CustomDecoration(),
                        child: Icon(
                          Icons.add,
                          color: context.colors.primary,
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Flexible(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Drop files here, paste or ',
                          style: AppTextStyle.s12_w400(
                            color: context.colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => getIt<AddImageHelper>().getImages(context, imagesBloc),
                          child: Text(
                            'Browse',
                            style: AppTextStyle.s12_w400(
                              color: context.colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          ),
          GestureDetector(
            onTap: () => getIt<AddImageHelper>().setUploadFiles(imagesBloc.state.data),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding : EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Add Files',
                    style: AppTextStyle.s12_w400(color: context.colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
