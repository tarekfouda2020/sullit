part of 'support_tickets_widgets_imports.dart';

class BuildTicketDialog extends StatelessWidget {
  final SupportTicketsController supportTicketsController;

  const BuildTicketDialog({Key? key, required this.supportTicketsController})
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
                  "Create Ticket",
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
              key: supportTicketsController.formKey,
              child: Column(
                children: [
                  GenericTextField(
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.text,
                    action: TextInputAction.done,
                    controller: supportTicketsController.subjectController,
                    validate: (value) => value?.validateEmpty(),
                    label: "Subject",
                    margin: Dimens.paddingVertical5PX,
                  ),
                  GenericTextField(
                    fieldTypes: FieldTypes.rich,
                    type: TextInputType.text,
                    controller: supportTicketsController.detailsController,
                    action: TextInputAction.done,
                    validate: (value) => value?.validateEmpty(),
                    label: "Description",
                    max: 4,
                    margin: Dimens.paddingVertical5PX,
                  ),
                  BuildAddTicketsImages(
                    controller: supportTicketsController,
                  ),
                  DefaultButton(
                      title: "confirm",
                      width: 120.w,
                      height: 30.h,
                      margin: Dimens.paddingVertical10PX,
                      onTap: () =>
                          supportTicketsController.createTicket(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
