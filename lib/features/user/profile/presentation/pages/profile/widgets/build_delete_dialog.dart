part of 'profile_widgets_imports.dart';

class BuildDeleteDialog extends StatelessWidget {
  final Function() onPressConfirm;
  final String content;
  const BuildDeleteDialog(
      {super.key, required this.onPressConfirm, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(
                content,
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
              Gaps.vGap16,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultButton(
                    title: tr('confirm'),
                    height: 35.h,
                    // width: 100,
                    borderColor: context.colors.white,
                    borderRadius: Dimens.borderRadius30PX,
                    onTap: onPressConfirm,
                  ),
                  DefaultButton(
                    title: tr('cancel'),
                    textColor: context.colors.black,
                    height: 35.h,
                    color: context.colors.greyWhite,
                    // width: 100,
                    borderColor: context.colors.white,
                    borderRadius: Dimens.borderRadius30PX,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
