part of 'add_classified_product_w_imports.dart';

class BuildPdf extends StatelessWidget {
  final AddClassifiedProductsController  controller ;
  const BuildPdf({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<FileDomainModel?>,
        GenericState<FileDomainModel?>>(
      bloc: controller.pdf,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return Container(
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 100,
            alignment: AlignmentDirectional.topStart,
            margin: const EdgeInsetsDirectional.only(start: 5, top: 50),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.picture_as_pdf_outlined, size: 40,color: context.colors.primary,),
                    ),
                    Text(state.data!.fileName.split('/').first, style: AppTextStyle.s12_w400(color: context.colors.black),)
                  ],
                ),
                InkWell(
                  onTap: () => getIt<AddImageHelper>().removeExitedPdf(controller.pdf),
                  child: Icon(
                    Icons.clear,
                    color: context.colors.primary,
                    size: 15.r,
                  ),
                ),
              ],
            ),
          );
        }else {
         return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  tr('pdfSpecification'),
                  style: AppTextStyle.s16_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: CustomDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      child: Text(
                        'PDF',
                        style: AppTextStyle.s14_w800(
                          color: context.colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.showImageDialog(
                        extension: 'pdf',
                        context: context,
                        type: FileImageType.singleImage,
                        imageType: ImageType.pdf,
                      ),
                      child: Container(
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
              ),
            ],
          );
        }
      },
    );
  }
}
