part of 'home_widgets_imports.dart';


class UpdateDialogWidget extends StatelessWidget {
  const UpdateDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => SystemNavigator.pop(),
      child: AlertDialog(
        backgroundColor: context.colors.white,
        content: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(tr("force_update_message"),
              textAlign: TextAlign.center,
              style: AppTextStyle.s15_w500(color: context.colors.black).copyWith(
                height: 1.35
              ),
            ),
            DefaultButton(title: "Update",
            onTap: () => getIt<Utilities>().openAppInStore(),
            )
          ],
        ),
      ),
    );
  }
}
