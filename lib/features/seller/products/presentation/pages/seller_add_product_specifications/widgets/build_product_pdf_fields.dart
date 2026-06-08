part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildProductPdfFields extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildProductPdfFields(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "PDF Specification",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PDF Specification",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.text,
            hint: "Choose File",
            action: TextInputAction.done,
            suffixIcon: Container(
              width: 70.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.darkPurple.withOpacity(.3),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(5),
                ),
              ),
              child: Text(
                "Browse",
                style: AppTextStyle.s14_w600(color: context.colors.white),
              ),
            ),
            onTab: () =>
                sellerAddProductSpecificationsController.onAddPdf(context),
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => value!.noValidate(),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
          ),
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: sellerAddProductSpecificationsController.pdfCubit,
            builder: (context, state) {
              if (state is GenericUpdateState && state.data != null) {
                return Container(
                  height: 70.h,
                  width: 90.w,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
                  decoration: BoxDecoration(
                    borderRadius: Dimens.borderRadius5PX,
                    image: DecorationImage(
                      image: AssetImage(Res.pdf),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: InkWell(
                    onTap: sellerAddProductSpecificationsController.removePdf,
                    child: Icon(
                      Icons.cancel,
                      size: 30,
                      color: context.colors.primary,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
