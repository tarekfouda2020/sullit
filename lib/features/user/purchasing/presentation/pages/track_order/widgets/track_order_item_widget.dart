part of 'track_order_widgets_imports.dart';

class TrackOrderItemWidget extends StatelessWidget {
  final int currentStep;
  final bool isLast;
  final TrackOrderEnum trackStatus;

  const TrackOrderItemWidget({
    super.key,
     this.currentStep = 3,
    required this.isLast,
    required this.trackStatus,
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
                thisColor:_getStepColor(context)
              ),
              // child: _getCurrentIcon,
              child: Visibility(
                visible: trackStatus.getStepNumber() <= currentStep,
                  child: SvgPicture.asset(Res.successIcon,
                  colorFilter: ColorFilter.mode(context.colors.white, BlendMode.srcIn),
                  )
              )
            ),
            if (!isLast)
              Container(
                width: 3,
                height: 80,
                color: _getLineColor(context),
              ),
          ],
        ),
        Gaps.hGap10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap8,
            if(currentStep>=trackStatus.getStepNumber())
            Text(
              trackStatus.getTitle(),
              style: AppTextStyle.s20_w700(
                  color: context.colors.black),
            ),
            Gaps.vGap5,
            if(currentStep>=trackStatus.getStepNumber())
            Text(
              "10 feb 2025 - 02:00 PM",
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


  Color _getLineColor(BuildContext context) {
    return currentStep >= trackStatus.getStepNumber()
        ? context.colors.primary
        : context.colors.deepGray;
  }

  Color  _getStepColor(BuildContext context) {
    if(currentStep >= trackStatus.getStepNumber()){
      return context.colors.primary;
    }else{
      return context.colors.deepGray;
    }
  }


}
