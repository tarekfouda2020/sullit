part of 'product_details_widgets_imports.dart';

class RequiredPrescriptionNoteWidget extends StatelessWidget {
  const RequiredPrescriptionNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
          color: context.colors.lightPink2,
          borderRadius: Dimens.borderRadius10PX),
      child: Row(
        spacing: 8,
        children: [
          SvgPicture.asset(
            Res.warningIcon,
            width: 17,
            height: 17,
          ),
          Text(
            "Required Prescription ",
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          )
        ],
      ),
    );
  }
}
