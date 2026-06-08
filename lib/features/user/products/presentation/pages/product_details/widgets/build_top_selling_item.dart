part of 'product_details_widgets_imports.dart';

class BuildTopSellingItem extends StatelessWidget {
  const BuildTopSellingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      width: 160.w,
      height: 100.h,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(7).r,
          border: Border.all(color: context.colors.greyWhite),
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      // child: InkWell(
      //   onTap: ()=>AutoRouter.of(context).push(const ProductDetailsRoute()),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Expanded(
      //         child: Stack(
      //           children: [
      //             CachedImage(
      //                 fit: BoxFit.fill,
      //                 haveRadius: true,
      //                 borderRadius: BorderRadius.only(
      //                     topRight: const Radius.circular(7).r,
      //                     topLeft: const Radius.circular(7).r),
      //                 url:
      //                 "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg"),
      //             PositionedDirectional(
      //               end: 3,
      //
      //               child: Column(
      //                 children: [
      //                   Container(
      //
      //                     padding:
      //                     const EdgeInsets.all(4).r,
      //                     margin:
      //                     const EdgeInsets.all(7).r,
      //                     alignment: Alignment.center,
      //                     decoration: BoxDecoration(
      //                       color: context.colors.white,
      //                       shape: BoxShape.circle,
      //                       boxShadow: [
      //                         BoxShadow(
      //                             color: context.colors.greyWhite,
      //                             blurRadius: 1,
      //                             spreadRadius: 1)
      //                       ],
      //                     ),
      //                     child: Icon(Icons.favorite_border,color: context.colors.blackOpacity,size:16.sp ,),
      //                   ),
      //                   Container(
      //                     padding:
      //                     const EdgeInsets.all(4).r,
      //                     margin:
      //                     const EdgeInsets.all(3).r,
      //                     alignment: Alignment.center,
      //                     decoration: BoxDecoration(
      //                       color: context.colors.white,
      //                       shape: BoxShape.circle,
      //                       boxShadow: [
      //                         BoxShadow(
      //                             color: context.colors.greyWhite,
      //                             blurRadius: 1,
      //                             spreadRadius: 1)
      //                       ],
      //                     ),
      //                     child:  Icon(Icons.compare_arrows,color: context.colors.blackOpacity,size:16.sp ,),
      //                   ),
      //                   Container(
      //                       padding:
      //                       const EdgeInsets.all(4).r,
      //                       margin:
      //                       const EdgeInsets.all(7).r,
      //                       alignment: Alignment.center,
      //                       decoration: BoxDecoration(
      //                         color: context.colors.white,
      //                         shape: BoxShape.circle,
      //                         boxShadow: [
      //                           BoxShadow(
      //                               color: context.colors.greyWhite,
      //                               blurRadius: 1,
      //                               spreadRadius: 1)
      //                         ],
      //                       ),
      //                       child:  Icon(Icons.shopping_cart,color: context.colors.blackOpacity,size:16.sp ,)
      //                   ),
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8).r,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               "AED 8.21",
      //               style:
      //               AppTextStyle.s10_bold(color: context.colors.primary),
      //             ),
      //             RatingBar.builder(
      //               initialRating: 3,
      //               ignoreGestures: true,
      //               minRating: 1,
      //               direction: Axis.horizontal,
      //               allowHalfRating: true,
      //               itemCount: 5,
      //               itemSize: 16,
      //               unratedColor: context.colors.disableGray,
      //               itemPadding: const EdgeInsets.only(bottom: 5).r,
      //               itemBuilder: (context, _) => const Icon(
      //                 Icons.star,
      //                 color: Colors.amber,
      //               ),
      //               onRatingUpdate: (rating) {},
      //             ),
      //             Text(
      //               "Olay",
      //               style: AppTextStyle.s14_w800(
      //                 color: context.colors.black,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
