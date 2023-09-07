part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveReason extends StatelessWidget {
  final RetrieveOrderController controller;

  const BuildRetrieveReason({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Return Reason ? ",
            style: AppTextStyle.s15_w700(color: context.colors.black),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.rich,
            max: 4,
            controller: controller.reasonController,
            type: TextInputType.text,
            action: TextInputAction.done,
            fillColor: context.colors.background,
            validate: (value) => value?.validateEmpty(),
            hint: "Type your reason ...",
            margin: Dimens.paddingVertical10PX,
          ),
        ],
      ),
    );
  }
}
