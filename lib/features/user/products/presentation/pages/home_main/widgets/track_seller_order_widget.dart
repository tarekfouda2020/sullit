part of 'home_main_widgets_imports.dart';

class TrackSellerOrderWidget extends StatelessWidget {

  const TrackSellerOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Container(
          // width: MediaQuery.sizeOf(context).width*0.74,
          width: 300,
          padding: const EdgeInsetsDirectional.only(start: 24,top: 22,bottom: 22,end: 5),
          margin: const EdgeInsetsDirectional.only(end: 12),
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius12PX,
            color: context.colors.white,
            border: Border.all(
              color: context.colors.borderColor
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Image.asset(Res.addToCartGif,
                    width: 62,height: 62,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          Text("Munch Corner",
                          maxLines: 2,
                          style: AppTextStyle.s18_w600(color: context.colors.black).copyWith(
                            overflow: TextOverflow.ellipsis
                          ),
                          ),
                          Text("#56463366",
                            style: AppTextStyle.s11_w400(color: context.colors.textColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap10,
                    Text("Order Placed",
                      maxLines: 2,
                      style: AppTextStyle.s20_w700(color: context.colors.primary).copyWith(
                          overflow: TextOverflow.ellipsis
                      ),
                    ),
                    Gaps.vGap7,
                    Text("10 feb 2025 - 02:00 PM",
                      style: AppTextStyle.s14_w500(color: context.colors.textColor).copyWith(
                          overflow: TextOverflow.ellipsis
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        );
      },),
    );
  }
}
