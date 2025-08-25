part of 'track_order_widgets_imports.dart';

class TrackStatusWidget extends StatelessWidget {
  final bool isActive;
  final bool isLast;
  const TrackStatusWidget({super.key, required this.isActive, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 40,height: 40,
            alignment: Alignment.center,
            decoration: CustomDecoration(
                myBoxShadow: const [],
                boxShape: BoxShape.circle,
                thisColor: isActive
                    ?context.colors.primary
                    :context.colors.deepGray
            ),
            // child: _getCurrentIcon,
            child: Visibility(
              // visible: trackStatus.getStepNumber() <= currentStep,
              visible: isActive,
                child: SvgPicture.asset(Res.successIcon,
                  colorFilter: ColorFilter.mode(context.colors.white, BlendMode.srcIn),
                )
            )
        ),
        if (!isLast)
          Container(
            width: 3,
            height: 80,
            color: isActive
                ?context.colors.primary
                :context.colors.deepGray,
          ),
      ],
    );
  }
}
