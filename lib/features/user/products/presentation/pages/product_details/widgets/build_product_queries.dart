part of 'product_details_widgets_imports.dart';

class BuildProductQueries extends StatelessWidget {
  final ProductDetailsController controller;

  const BuildProductQueries({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: controller.formKey,
        child: Container(
          padding: Dimens.paddingAll8PX,
          margin: Dimens.paddingHorizontal15PX,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Gaps.vGap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${tr('productQueries')} : ",
                    style: AppTextStyle.s15_w700(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
              GenericTextField(
                fieldTypes: FieldTypes.rich,
                max: 4,
                controller: controller.queryController,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: context.colors.background,
                validate: (value) => value?.validateEmpty(),
                hint: "${tr('writeQuestionHere')}...",
                margin: Dimens.paddingVertical10PX,
              ),
              DefaultButton(
                title: tr('submit'),
                width: 120.w,
                height: 30.h,
                margin: Dimens.paddingHorizontal10PX,
                borderRadius: Dimens.borderRadius5PX,
                onTap: () => controller.sendQuery(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
