part of 'imports.dart';

class ScanFieldWidget extends StatelessWidget {
  final PriceFinderController controller;

  const ScanFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton.icon(
        onPressed: () => controller.onScanBarcode(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.darkGreen2,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        ),
        icon: SvgPicture.asset(
          Res.qrScanIcon,
          color: context.colors.white,
          height: 18,
          width: 18,
        ),
        label: Text(
          tr('scanBarcode'),
          style: AppTextStyle.s18_w700(color: context.colors.white),
        ),
      ),
    );
  }
}
