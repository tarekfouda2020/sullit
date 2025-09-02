part of 'track_order_widgets_imports.dart';

class TrackOrderItemWidget extends StatelessWidget {
  // final int currentStep;
  final bool isLast;
  // final TrackOrderEnum trackStatus;

  final OrderStatusModel statusModel;
  final TrackOrderModel trackModel;

  const TrackOrderItemWidget({
    super.key,
    required this.statusModel,
    required this.trackModel,
    //  this.currentStep = 3,
    required this.isLast,
    // required this.trackStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 40,height: 40,
              alignment: Alignment.center,
              decoration: CustomDecoration(
                myBoxShadow: const [],
                boxShape: BoxShape.circle,
                thisColor:context.colors.primary
              ),
              // child: _getCurrentIcon,
              child: Visibility(
                // visible: trackStatus.getStepNumber() <= currentStep,
                  child: SvgPicture.asset(Res.successIcon,
                  colorFilter: ColorFilter.mode(context.colors.white, BlendMode.srcIn),
                  )
              )
            ),
            if (!isLast)
              Container(
                width: 3,
                height: 80,
                color: context.colors.primary,
              ),
          ],
        ),
        Gaps.hGap10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap8,
            // if(currentStep>=trackStatus.getStepNumber())
            Text(
              statusModel.status,
              style: AppTextStyle.s20_w700(
                  color: context.colors.black),
            ),
            Gaps.vGap5,
            // if(currentStep>=trackStatus.getStepNumber())
            Text(
              statusModel.createdAt,
              style: AppTextStyle.s16_w400(
                  color: context.colors.textColor)
                  .copyWith(
                height: 1.2,
              ),
            ),
            Gaps.vGap25,
          ],
        )
      ],
    );
  }


  // Color _getLineColor(BuildContext context) {
  //   return currentStep >= trackStatus.getStepNumber()
  //       ? context.colors.primary
  //       : context.colors.deepGray;
  // }

  // Color  _getStepColor(BuildContext context) {
  //   if(currentStep >= trackStatus.getStepNumber()){
  //     return context.colors.primary;
  //   }else{
  //     return context.colors.deepGray;
  //   }
  // }


}
