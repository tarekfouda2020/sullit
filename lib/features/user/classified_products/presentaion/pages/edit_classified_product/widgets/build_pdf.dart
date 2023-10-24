part of 'edit_classified_product_w_imports.dart';

class BuildPdf extends StatelessWidget {
  final EditClassifiedProductController controller;

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
            style: AppTextStyle.s14_w800(
              color: context.colors.black,
            ),
          ),
        ),
        BlocBuilder<GenericBloc<FileDomainModel?>,
            GenericState<FileDomainModel?>>(
          bloc: controller.pdfBloc,
          builder: (context, state) {
            return Visibility(
              visible: state.data != null && state.data!.url.isNotEmpty,
              replacement: InkWell(
                onTap: () => controller.showImageDialog(
                  context: context,
                  type: FileImageType.pdf,
                  imageType: ImageType.pdf,
                  extension: "pdf",
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
                    onTap: () => getIt<AddImageHelper>().removeExitedPdf(
                      controller.pdfBloc,
                    ),
                    child: Icon(
                      Icons.clear,
                      color: context.colors.primary,
                      size: Dimens.dp20.sp,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
