part of 'edit_classified_product_w_imports.dart';
class BuildPdf extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildPdf({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'PDF Specification',
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
        ),
        BlocBuilder<GenericBloc<FileDomainModel?>,
            GenericState<FileDomainModel?>>(
            bloc: controller.pdf,
            builder: (context, state) {
              return Visibility(
                visible: state.data != null,
                replacement: Row(
                  children: [
                    InkWell(
                      onTap: () => controller.showImageDialog(
                        context: context,
                        type: FileImageType.pdf,
                        imageType: ImageType.pdf,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        height: 60,
                        width: 60,
                        decoration: CustomDecoration(),
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: context.colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  alignment: AlignmentDirectional.topStart,
                  margin:
                  const EdgeInsetsDirectional.only(start: 5, top: 10),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 40,
                              color: context.colors.primary,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => getIt<AddImageHelper>()
                            .removeExitedPdf(controller.pdf),
                        child: Icon(
                          Icons.clear,
                          color: context.colors.primary,
                          size: 15.r,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
