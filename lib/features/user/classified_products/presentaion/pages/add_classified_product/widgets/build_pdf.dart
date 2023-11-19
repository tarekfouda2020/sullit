part of 'add_classified_product_w_imports.dart';

class BuildPdf extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildPdf({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingT20B10,
          child: Text(
            tr('pdfSpecification'),
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
        ),
        BlocBuilder<GenericBloc<FileDomainModel?>,
            GenericState<FileDomainModel?>>(
          bloc: controller.pdfBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: Dimens.paddingAll15PX,
                decoration: CustomDecoration(),
                child: Stack(
                  children: [
                    Container(
                      height: Dimens.dp80.r,
                      width: Dimens.dp80.r,
                      decoration: CustomDecoration(),
                      child: Icon(
                        Icons.picture_as_pdf_outlined,
                        size: 40.sp,
                        color: context.colors.primary,
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.pdfBloc.onUpdateToInitState(null),
                      child: Icon(
                        Icons.clear,
                        color: context.colors.primary,
                        size: Dimens.dp20.sp,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: Dimens.paddingAll15PX,
                decoration: CustomDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => controller.showImageDialog(
                        context: context,
                        type: FileImageType.singleImage,
                        imageType: ImageType.pdf,
                        extension: TypeExtension.document.name,
                      ),
                      child: Container(
                        height: Dimens.dp80.r,
                        width: Dimens.dp80.r,
                        decoration: CustomDecoration(),
                        child: Icon(
                          Icons.add,
                          size: Dimens.dp20.sp,
                          color: context.colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        )
      ],
    );
  }
}
