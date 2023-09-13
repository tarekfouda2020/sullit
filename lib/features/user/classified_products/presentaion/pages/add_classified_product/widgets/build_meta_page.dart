part of 'add_classified_product_w_imports.dart';

class BuildMetaTags extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildMetaTags({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Meta Tags',
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.metaTitleController,
                validate: (value) => value!.validateEmpty(),
                label: 'Meta Title',
              ),
              GenericTextField(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                controller: controller.metaDescController,
                fieldTypes: FieldTypes.rich,
                max: 5,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Description',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Meta Image',
                  style: AppTextStyle.s14_w800(
                    color: context.colors.black,
                  ),
                ),
              ),
              BlocBuilder<GenericBloc<FileDomainModel?>,
                  GenericState<FileDomainModel?>>(
                bloc: controller.metaImageBloc,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return CachedImage(
                      imgMargin: const EdgeInsets.all(5),
                      url: state.data!.url,
                      height: 60,
                      borderRadius: BorderRadius.circular(5),
                      width: 60,
                    );
                  } else {
                    return InkWell(
                      onTap: () => controller.showImageDialog(
                        context: context,
                        type: FileImageType.singleImage,
                        imageType: ImageType.meta,
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
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
