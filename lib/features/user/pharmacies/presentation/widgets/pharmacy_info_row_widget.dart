part of 'widgets_imports.dart';

class PharmacyInfoRowWidget extends StatelessWidget {
  final Shop? pharmacy;

  const PharmacyInfoRowWidget({super.key, required this.pharmacy});

  @override
  Widget build(BuildContext context) {
    if (pharmacy == null) return Gaps.empty;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      margin: const EdgeInsets.only(top: 1.2),
      color: context.colors.white,
      child: Row(
        children: [
          CachedImage(
            url: pharmacy!.logo ?? "",
            width: 40,
            height: 33,
            borderRadius: Dimens.borderRadius8PX,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              pharmacy!.name ?? "",
              style: AppTextStyle.s16_w600(
                color: context.colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
