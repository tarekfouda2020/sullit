import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/classified_products/data/enums/enums.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_multi_images.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_select_files.dart';
import 'package:flutter_tdd/features/user/classified_products/presentaion/widgets/build_upload_files.dart';

class BuildImagesDialog extends StatelessWidget {
  final FileImageType type;
  final ImageType imgType;
  final String? extension ;

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
    GenericBloc<int> pagesBloc = GenericBloc(0);
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabBar(
                    labelPadding: const EdgeInsets.symmetric(vertical: 10),
                    indicator: CustomDecoration(),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Text(
                         tr('selFile'),
                        style: AppTextStyle.s12_w400(
                          color: context.colors.black,
                        ),
                      ),
                      Text(
                        tr('uploadFile'),
                        style: AppTextStyle.s12_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        BuildSelectFile(
                          extension: extension,
                          type: type,
                          imgType: imgType,
                          onAddFiles: (List<FileDomainModel> files) {
                            onAddFiles(files);
                          },
                        ),
                        if (type == FileImageType.singleImage)
                          BuildUploadFiles(
                            type: imgType,
                          ),
                        if (type == FileImageType.multiImage)
                          const BuildMultiImages()
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
