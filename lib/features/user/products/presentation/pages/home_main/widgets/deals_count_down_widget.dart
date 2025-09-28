part of 'home_main_widgets_imports.dart';

class DealsCountDownWidget extends StatefulWidget {
  final FlashSale flashSales;
  final HomeMainController controller;

  const DealsCountDownWidget({super.key, required this.flashSales, required this.controller});

  @override
  State<DealsCountDownWidget> createState() => _DealsCountDownWidgetState();
}

class _DealsCountDownWidgetState extends State<DealsCountDownWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.countDownCubit.state.data.initDuration(widget.flashSales.date);
    widget.controller.countDownCubit.state.data.startTimer(
      callback: () => widget.controller.countDownCubit..onUpdateData(widget.controller.countDownCubit.state.data),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            widget.flashSales.title.toUpperCase(),
            style: AppTextStyle.s16_w700(color: context.colors.white),
          ),
          Gaps.vGap8,
          BlocBuilder<GenericBloc<TimerEntity>, GenericState<TimerEntity>>(
            bloc: widget.controller.countDownCubit,
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildCustomTimer(
                    firstTimeNumber: widget.controller.getDigit(state.data.myDuration, 'days', 0),
                    secondTimeNumber: widget.controller.getDigit(state.data.myDuration, 'days', 1),
                    threeTimeNumber: widget.controller.getDigit(state.data.myDuration, 'days', 2),
                    text: tr("days"),
                  ),
                  _buildSeparatorText(context),
                  BuildCustomTimer(
                    firstTimeNumber: widget.controller.getDigit(state.data.myDuration, 'hours', 0),
                    secondTimeNumber: widget.controller.getDigit(state.data.myDuration, 'hours', 1),
                    text: tr("hours"),
                  ),
                  _buildSeparatorText(context),
                  BuildCustomTimer(
                    firstTimeNumber: widget.controller.getDigit(state.data.myDuration, 'minutes', 0),
                    secondTimeNumber: widget.controller.getDigit(state.data.myDuration, 'minutes', 1),
                    text: tr("minutes"),
                  ),
                  _buildSeparatorText(context),
                  BuildCustomTimer(
                    firstTimeNumber: widget.controller.getDigit(state.data.myDuration, 'seconds', 0),
                    secondTimeNumber: widget.controller.getDigit(state.data.myDuration, 'seconds', 1),
                    text: tr("second"),
                  ),
                ],
              );
            },
          ),
          InkWell(
            onTap: () => widget.controller.navigateToDeals(context),
            child: Container(
              alignment: Alignment.center,
              margin: Dimens.marginTop10,
              // height: 25,
              width: 164,
              padding: Dimens.paddingVertical9PX,
              decoration: BoxDecoration(
                borderRadius: Dimens.borderRadius30PX,
                color: context.colors.white,
              ),
              child: Text(
                tr("buyNow"),
                style: AppTextStyle.s14_w700(color: context.colors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeparatorText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        tr('dealsCountdown'),
        style: AppTextStyle.s16_w700(color: context.colors.gold),
      ),
    );
  }
}
