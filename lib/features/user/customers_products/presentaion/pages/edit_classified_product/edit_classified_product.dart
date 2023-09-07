part of 'edit_classified_product_imports.dart';

class EditClassifiedProduct extends StatefulWidget {
  const EditClassifiedProduct({Key? key}) : super(key: key);

  @override
  State<EditClassifiedProduct> createState() => _EditClassifiedProductState();
}

class _EditClassifiedProductState extends State<EditClassifiedProduct> {
  final EditClassifiedProductController controller = EditClassifiedProductController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: 'Edit product',
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "General",
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          const BuildEditGeneralFields(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Images",
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: CustomDecoration(),
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gallery Images',
                      style: AppTextStyle.s14_w800(color: context.colors.black),
                    ),
                    Gaps.vGap10,
                  ],
                ),
                BuildEditImages(controller:controller,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10).r,
                  child: Text(
                    'Thumbnail Image',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BuildEditThumbnailImage(controller: controller, ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Videos',
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: CustomDecoration(),
            child: Column(
              children: [
                GenericTextField(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(),
                  label: 'Video From',
                ),
                GenericTextField(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(),
                  label: 'Video URL',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Meta Tags',
              style: AppTextStyle.s16_w700(color: context.colors.black),
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
                  validate: (value) => value!.validateEmpty(),
                  label: 'Meta Title',
                ),
                GenericTextField(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BuildEditMetaImage(controller: controller)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Price',
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          Container(
            decoration: CustomDecoration(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: GenericTextField(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value!.validateEmpty(),
              label: 'Unit price',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Description',
              style: AppTextStyle.s14_w800(color: context.colors.black),
            ),
          ),
          Container(
            decoration: CustomDecoration(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: GenericTextField(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              fieldTypes: FieldTypes.rich,
              type: TextInputType.text,
              action: TextInputAction.next,
              max: 10,
              validate: (value) => value!.validateEmpty(),
              label: 'Description',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'PDF Specification',
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: CustomDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Text(
                    'PDF',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.colors.primary,
            ),
            child: Text(
              textAlign: TextAlign.center,
              'Save Changes'.toUpperCase(),
              style: AppTextStyle.s16_w700(color: context.colors.white),
            ),
          )
        ],
      ),
    );
  }
}
