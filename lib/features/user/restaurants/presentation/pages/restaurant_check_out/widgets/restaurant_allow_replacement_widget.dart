part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantAllowReplacementWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;
  const RestaurantAllowReplacementWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 16, top: 15, end: 16, bottom: 9),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        thisColor: context.colors.lightPrimary,
        boxBorder: Border.all(color: context.colors.lightPrimary),
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            children: [
              SvgPicture.asset(Res.redWarningIcon),
              Gaps.hGap7,
              Expanded(
                child: Text(
                  tr("allow_items_replacement"),
                  style: AppTextStyle.s16_w500(color: context.colors.bloodyRed),
                ),
              ),
              Gaps.hGap5,
              RestaurantSwitchButtonWidget(
                switchBloc: controller.allowReplacementCubit,
                onToggle: (value) =>
                    controller.switchReplacementAccept(context, value),
              )
            ],
          ),
          Text(
            tr("replacement_info"),
            style: AppTextStyle.s11_w500(color: context.colors.black)
                .copyWith(height: 1.3),
          )
        ],
      ),
    );
  }
}
