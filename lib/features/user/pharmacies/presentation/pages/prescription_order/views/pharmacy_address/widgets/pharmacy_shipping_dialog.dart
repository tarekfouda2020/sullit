part of 'widgets_imports.dart';

class PharmacyShippingDialog extends StatelessWidget {
  final String message;
  final VoidCallback onContinue;

  const PharmacyShippingDialog({
    super.key,
    required this.message,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius20PX,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gaps.vGap16,
              Text(
                message,
                textAlign: TextAlign.center,
                style: AppTextStyle.s16_w400(color: context.colors.black).copyWith(
                  height: 1.6,
                  letterSpacing: 0.2,
                ),
              ),
              Gaps.vGap32,
              DefaultButton(
                title: tr("continue"),
                height: 50,
                margin: EdgeInsets.zero,
                borderRadius: Dimens.borderRadius12PX,
                onTap: onContinue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
