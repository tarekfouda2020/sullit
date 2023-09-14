import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/manager/helpers/add_image_helper.dart';

class BuildUploadSingleFile extends StatelessWidget {
  const BuildUploadSingleFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GenericBloc<File?> imageBloc = GenericBloc(null);
    return BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
      bloc: imageBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                width: 100,
                height: 100,
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsetsDirectional.only(start: 5, top: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: context.colors.greyWhite,
                  ),
                  image: DecorationImage(
                    image: FileImage(state.data!, scale: 10),
                    fit: BoxFit.none,
                  ),
                ),
                child: InkWell(
                  onTap: () => getIt<AddImageHelper>().removeImage( imageBloc),
                  child: Icon(
                    Icons.clear,
                    color: context.colors.primary,
                    size: 15.r,
                  ),
                ),
              ),
              Gaps.vGap24,
              GestureDetector(
                onTap: () => getIt<AddImageHelper>().setUploadFile(state.data!) ,
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
                        'Add File',
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
                Text(
                  'Drop files here, paste or ',
                  style: AppTextStyle.s12_w400(
                    color: context.colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => getIt<AddImageHelper>().getImage(context, imageBloc),
                  child: Text(
                    'Browse',
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
