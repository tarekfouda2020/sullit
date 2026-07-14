part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyDriverTipsWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;

  const PharmacyDriverTipsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const PharmacyCartPaymentSectionTitleWidget(
              title: 'Driver Support',
            ),
            Text(
              " ( optional )",
              style: AppTextStyle.s12_w400(color: context.colors.black),
            )
          ],
        ),
        Gaps.vGap8,
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsetsDirectional.only(bottom: 14, top: 16),
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius20PX),
          child: BlocBuilder<GenericBloc<List<DriverTipsModel>>,
              GenericState<List<DriverTipsModel>>>(
            bloc: controller.tipsListCubit,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 17),
                    child: Text(
                      "Support your rider with a tip ",
                      style:
                          AppTextStyle.s14_w700(color: context.colors.primary),
                    ),
                  ),
                  Gaps.vGap15,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        state.data.length,
                        (index) {
                          var model = state.data[index];
                          return _buildGestureDetector(model, context, index);
                        },
                      ),
                    ),
                  ),
                  Gaps.vGap15,
                  Visibility(
                    visible: controller.showRaiderTipsField(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 17),
                      child: GenericTextField(
                        controller: controller.driverTipCtr,
                        fieldTypes: FieldTypes.normal,
                        margin: EdgeInsets.zero,
                        type: TextInputType.number,
                        action: TextInputAction.done,
                        validate: (value) => value?.noValidate(),
                        fillColor: context.colors.customBackground,
                        radius: Dimens.borderRadius20PX,
                        hint: "Enter rider's tips",
                        hintStyle: AppTextStyle.s14_w400(
                            color: context.colors.textColor),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  GestureDetector _buildGestureDetector(
      DriverTipsModel model, BuildContext context, int index) {
    return GestureDetector(
      onTap: () => controller.selectDriverTip(model),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        margin: EdgeInsetsDirectional.only(start: index == 0 ? 17 : 8),
        decoration: BoxDecoration(
            border: Border.all(
                color: model.isSelect
                    ? context.colors.primary
                    : Colors.transparent),
            borderRadius: Dimens.borderRadius20PX,
            color: model.isSelect
                ? context.colors.lightPink
                : context.colors.gray3),
        child: model.isCustom
            ? Text(
                model.amount,
                style: AppTextStyle.s16_w500(
                    color: model.isSelect
                        ? context.colors.primary
                        : context.colors.gray8),
              )
            : DirhamPrice(
                amount: model.amount,
                textStyle: AppTextStyle.s16_w500(
                    color: model.isSelect
                        ? context.colors.primary
                        : context.colors.gray8),
              ),
      ),
    );
  }
}
