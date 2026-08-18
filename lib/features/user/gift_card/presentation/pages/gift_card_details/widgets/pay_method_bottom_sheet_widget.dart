part of 'gift_card_details_widgets_imports.dart';

class PayMethodBottomSheetWidget extends StatelessWidget {
  final GenericBloc<List<PayMethodDomainModel>> payMethodsCubit;
  final void Function(PayMethodDomainModel payMethod) onSelectItem;
  final void Function() onPressProcess;
  final void Function()? onClose;

  const PayMethodBottomSheetWidget({
    super.key,
    required this.onSelectItem,
    required this.payMethodsCubit,
    required this.onPressProcess,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: Dimens.sheetBorderRadius),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(
            title: tr("selectPaymentMethod"),
            onClose: onClose,
          ),
          Gaps.vGap20,
          BlocBuilder<GenericBloc<List<PayMethodDomainModel>>,
              GenericState<List<PayMethodDomainModel>>>(
            bloc: payMethodsCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    ...List.generate(
                      state.data.length,
                      (index) {
                        return PayMethodItemWidget(
                          model: state.data[index],
                          onTap: () => onSelectItem(state.data[index]),
                        );
                      },
                    ),
                    Gaps.vGap15,
                    if (_isItemSelected(state.data))
                      CustomBottomSafeAreaWidget(
                        iosPaddingBottom: 10,
                        child: DefaultButton(
                          onTap: onPressProcess,
                          title: tr("processPayment"),
                          height: 50,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: context.colors.primary,
                          textColor: context.colors.white,
                          margin: EdgeInsets.zero,
                        ),
                      )
                  ]),
                );
              } else {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(3, (index) {
                        return const PayMethodShimmerWidget();
                      }),
                      Gaps.vGap15,
                      BuildShimmerItem(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: context.colors.offWhite,
                              borderRadius: Dimens.borderRadius30PX),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  bool _isItemSelected(List<PayMethodDomainModel> data) =>
      data.any((e) => e.isSelected);
}
