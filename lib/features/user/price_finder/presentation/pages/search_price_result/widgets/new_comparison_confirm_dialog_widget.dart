part of 'imports.dart';

class NewComparisonConfirmDialogWidget extends StatelessWidget {
  final VoidCallback onConfirm;

  const NewComparisonConfirmDialogWidget({
    super.key,
    required this.onConfirm,
  });

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
                tr('newPriceComparisonWarning'),
                textAlign: TextAlign.center,
                style: AppTextStyle.s14_w500(color: context.colors.black).copyWith(
                  height: 1.35,
                ),
              ),
              Gaps.vGap16,
              Column(
                children: [
                  DefaultButton(
                    title: tr('confirm'),
                    height: 35.h,
                    borderColor: context.colors.white,
                    borderRadius: Dimens.borderRadius30PX,
                    onTap: onConfirm,
                  ),
                  DefaultButton(
                    title: tr('cancel'),
                    textColor: context.colors.black,
                    height: 35.h,
                    color: context.colors.greyWhite,
                    borderColor: context.colors.white,
                    borderRadius: Dimens.borderRadius30PX,
                    onTap: () => Navigator.of(context).pop(false),
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
