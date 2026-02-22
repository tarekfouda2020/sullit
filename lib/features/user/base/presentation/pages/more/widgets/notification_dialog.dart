part of 'more_widgets_imports.dart';

class NotificationDialog extends StatelessWidget {
  final MoreController controller;

  const NotificationDialog({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      backgroundColor: context.colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.getNotificationText(),
              textAlign: TextAlign.center,
              style: AppTextStyle.s18_w700(color: context.colors.black),
            ),
            Gaps.vGap20,
            Text(
              tr('notification_desc'),
              textAlign: TextAlign.start,
              style: AppTextStyle.s14_w500(color: context.colors.textColor).copyWith(
                height: 1.4
              ),
            ),
            Gaps.vGap30,
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    title: tr('cancel'),
                    color: context.colors.white,
                    textColor: context.colors.grey,
                    borderColor: context.colors.grey.withOpacity(0.5),
                    onTap: () => Navigator.pop(context),
                    height: 40.h,
                    margin: EdgeInsets.zero,
                  ),
                ),
                Gaps.hGap15,
                Expanded(
                  child: DefaultButton(
                    title: tr('settings'),
                    color: context.colors.primary,
                    onTap: () {
                      Navigator.pop(context);
                      controller.openSettings();
                    },
                    height: 40.h,
                    margin: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
