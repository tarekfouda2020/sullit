part of 'classified_products_w_imports.dart';

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
            children: [
              Gaps.vGap20,
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      height: Dimens.dp70.r,
                      width: Dimens.dp70.r,
                      child: Stack(
                        children: [
                          Padding(
                            padding: Dimens.paddingAll10PX,
                            child: Icon(
                              Icons.picture_as_pdf_outlined,
                              size: Dimens.dp30.sp,
                              color: context.colors.primary,
                            ),
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
                  ],
                ),
              ),
              DefaultButton(
                height: Dimens.dp30.h,
                width: Dimens.dp128.w,
                margin: EdgeInsets.zero,
                title: tr('addFiles'),
                onTap: () =>
                    getIt<AddImageHelper>().setUploadFile(context, state.data!),
              )
            ],
          );
        } else {
          return Center(
            child: GestureDetector(
              onTap: () => getIt<AddImageHelper>().getPdf(fileBloc),
              child: Text(
                tr('browseFile'),
                style: AppTextStyle.s16_w500(
                  color: context.colors.blue,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
