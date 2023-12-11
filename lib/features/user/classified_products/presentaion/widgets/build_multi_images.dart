part of 'classified_products_w_imports.dart';

class BuildMultiImages extends StatelessWidget {
  const BuildMultiImages({super.key});

  @override
  Widget build(BuildContext context) {
    final GenericBloc<List<File>> imagesBloc = GenericBloc([]);
    return BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
      bloc: imagesBloc,
      builder: (context, state) {
        if (state is GenericUpdateState && state.data.isNotEmpty) {
          return Column(
            children: [
              Gaps.vGap20,
              Expanded(
                child: Wrap(
                  runSpacing: Dimens.dp10.r,
                  spacing: Dimens.dp10.r,
                  children: [
                    ...List.generate(
                      state.data.length,
                      (index) => Container(
                        alignment: AlignmentDirectional.topStart,
                        height: Dimens.dp70.r,
                        width: Dimens.dp70.r,
                        decoration: BoxDecoration(
                          borderRadius: Dimens.borderRadius5PX,
                          border: Border.all(
                            color: context.colors.greyWhite,
                          ),
                          image: DecorationImage(
                            image: FileImage(state.data[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: InkWell(
                          onTap: () => getIt<AddImageHelper>()
                              .removeImages(index, imagesBloc),
                          child: Icon(
                            Icons.clear,
                            color: context.colors.primary,
                            size: Dimens.dp20.r,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => getIt<AddImageHelper>()
                          .getImages(context, imagesBloc),
                      child: Container(
                        height: Dimens.dp70.r,
                        width: Dimens.dp70.r,
                        decoration: const CustomDecoration(),
                        child: Icon(
                          Icons.add,
                          color: context.colors.primary,
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
                onTap: () => getIt<AddImageHelper>()
                    .setUploadFiles(context, imagesBloc.state.data),
              )
            ],
          );
        } else {
          return Center(
            child: GestureDetector(
              onTap: () => getIt<AddImageHelper>()
                  .getImages(context, imagesBloc),
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
