part of 'order_details_widgets_imports.dart';

class ConfirmCancelDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const ConfirmCancelDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        tr("cancelOrder"),
        style: AppTextStyle.s16_w700(color: context.colors.black),
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          tr("confirmCancelOrder"),
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
      ),
      actions: [
        CupertinoDialogAction(
          child: Text(
            tr("no"),
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: onConfirm,
          child: Text(
            tr("yes"),
            style: AppTextStyle.s14_w400(color: context.colors.darkRed),
          ),
        ),
      ],
    );
  }
}
