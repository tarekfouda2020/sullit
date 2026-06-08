part of 'widgets_imports.dart';

class PharmacyOrderDetailsBody extends StatelessWidget {
  final PharmacyOrderDetailsController controller;
  const PharmacyOrderDetailsBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
      bloc: controller.orderDetailsBloc,
      builder: (context, state) {
        if (state is GenericUpdateState && state.data != null) {
          return CustomRefreshIndicatorWidget(
            onRefresh: () async => await controller.refreshData(),
            child: ListView(
              padding: Dimens.paddingAll20PX,
              children: [
                Gaps.vGap10,
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    PharmacyOrderDoneWidget(data: state.data!),
                    SvgPicture.asset(Res.orderConfirmImage),
                  ],
                ),
                Gaps.vGap20,
                Text(
                  "Products",
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
                Gaps.vGap20,
                PharmacyOrderProductsWidget(
                  order: state.data!,
                ),
                Gaps.vGap20,
                PharmacyConfirmSummaryWidget(
                    order: state.data!, controller: controller)
              ],
            ),
          );
        } else {
          return Gaps.empty;
        }
      },
    );
  }
}
