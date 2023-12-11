part of 'classified_products_w_imports.dart';

class BuildUploadSingleFile extends StatelessWidget {
  const BuildUploadSingleFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GenericBloc<File?> imageBloc = GenericBloc(null);
    return BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
      bloc: imageBloc,
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
                      decoration: BoxDecoration(
                        borderRadius: Dimens.borderRadius5PX,
                        border: Border.all(
                          color: context.colors.greyWhite,
                        ),
                        image: DecorationImage(
                          image: FileImage(state.data!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: InkWell(
                        onTap: () =>
                            getIt<AddImageHelper>().removeImage(imageBloc),
                        child: Icon(
                          Icons.clear,
                          color: context.colors.primary,
                          size: Dimens.dp20.r,
                        ),
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
              onTap: () => getIt<AddImageHelper>().getImage(context, imageBloc),
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
