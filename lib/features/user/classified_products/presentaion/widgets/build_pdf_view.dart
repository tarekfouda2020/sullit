import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart';

class BuildPdfFile extends StatelessWidget {
  const BuildPdfFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GenericBloc<File?> fileBloc = GenericBloc(null);
    return BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
      bloc: fileBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                width: 100,
                height: 100,
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsetsDirectional.only(start: 5, top: 50),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.picture_as_pdf_outlined, size: 40,color: context.colors.primary,),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.clear,
                        color: context.colors.primary,
                        size: 15.r,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => getIt<AddImageHelper>().setUploadFile(fileBloc.state.data!),
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
                        tr('addFiles'),
                        style: AppTextStyle.s12_w400(color: context.colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        } else {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:  () => getIt<AddImageHelper>().getPdf(fileBloc),
                  child: Text(
                    tr('browseFile'),
                    style: AppTextStyle.s12_w400(
                      color: context.colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
