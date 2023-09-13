part of 'tickets_details_widgets_imports.dart';

class BuildTicketDetailsDialog extends StatelessWidget {
  final TicketsDetailsController controller;
  final int id;

  const BuildTicketDetailsDialog(
      {Key? key, required this.controller, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding: Dimens.paddingAll10PX,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Reply",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                IconButton(
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.close,
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            Form(
              key: controller.formKey,
              child: Column(
                children: [
                  GenericTextField(
                    fieldTypes: FieldTypes.rich,
                    type: TextInputType.text,
                    action: TextInputAction.done,
                    validate: (value) => value?.validateEmpty(),
                    label: "Description",
                    max: 4,
                    controller: controller.description,
                    margin: Dimens.paddingVertical8PX,
                  ),
                  BuildAddTicketReplyImage(controller: controller),
                  DefaultButton(
                    title: "Send Replay",
                    width: 120.w,
                    height: 30.h,
                    margin: Dimens.paddingVertical10PX,
                    onTap: () => controller.addTicketReply(id, context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
