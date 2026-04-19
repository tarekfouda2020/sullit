part of 'widgets_imports.dart';


class PharmacyCardWidget extends StatelessWidget {
  const PharmacyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(const PharmacyDetailsRoute()),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            color: context.colors.borderColor,
            width: 1.5
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedImage(
                  width: MediaQuery.sizeOf(context).width*0.8,
                    height: 80,
                    fit: BoxFit.cover,
                    bgColor: context.colors.white,
                    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHayHQvo4nK2kWatXLb0lo1Sy8jVdYqzX2wg&s"),
              ],
            ),
             Divider(color: context.colors.borderColor,thickness: 1.5,),
           Padding(
             padding:  const EdgeInsetsDirectional.only(start: 28),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Medicina Pharmacy",
                   style: AppTextStyle.s18_w600(color: context.colors.black),
                 ),
                 Gaps.vGap12,
                 Row(
                   spacing: 10,
                   children: [
                     RatingBar.builder(
                       initialRating: 3,
                       ignoreGestures: true,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemSize: 15.sp,
                       unratedColor: context.colors.disableGray,
                       itemBuilder: (context, _) => const Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                       onRatingUpdate: (rating) {},
                     ),
                     Text("4/5",
                       style: AppTextStyle.s14_w400(color: context.colors.textColor),
                     )
                   ],
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
