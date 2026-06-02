part of 'widgets_imports.dart';

class PharmacyInfoWidget extends StatelessWidget {
  final Shop pharmacy;

  const PharmacyInfoWidget({super.key, required this.pharmacy});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pharmacy.name ?? "",
          style: AppTextStyle.s18_w700(color: context.colors.black),
        ),
        Gaps.vGap8,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RatingBar.builder(
              initialRating: (pharmacy.rating ?? 0.0).toDouble(),
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18,
              unratedColor: context.colors.disableGray,
              itemPadding: EdgeInsets.zero,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
              ignoreGestures: true,
            ),
            Gaps.hGap8,
            Text(
              "${pharmacy.rating}/5",
              style: AppTextStyle.s14_w500(color: context.colors.textColor),
            ),
          ],
        ),
      ],
    );
  }
}
