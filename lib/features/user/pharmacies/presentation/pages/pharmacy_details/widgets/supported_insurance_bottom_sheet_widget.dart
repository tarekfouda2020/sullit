part of 'widgets_imports.dart';

class SupportedInsuranceBottomSheetWidget extends StatefulWidget {
  final List<InsuranceCompany> insurance;
  final void Function(InsuranceCompany item)? onPressConfirm;
  final bool enableSelect;
  final String? title;
  const SupportedInsuranceBottomSheetWidget(
      {super.key,
        required this.insurance,
         this.onPressConfirm,
         this.enableSelect = false,
         this.title,
      });

  @override
  State<SupportedInsuranceBottomSheetWidget> createState() =>
      _SupportedInsuranceBottomSheetWidgetState();
}

class _SupportedInsuranceBottomSheetWidgetState
    extends State<SupportedInsuranceBottomSheetWidget> {
  final GenericBloc<bool> _refreshCubit = GenericBloc<bool>(false);

  void _onSelectItem(int index) {
    for (final item in widget.insurance) {
      item.isSelected = false;
    }
    widget.insurance[index].isSelected = true;
    _refreshCubit.onUpdateData(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp20,
        vertical: Dimens.dp20,
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height - (kToolbarHeight + 160),
      ),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: _refreshCubit,
        builder: (context, state) {
          InsuranceCompany? selected;
          for (final item in widget.insurance) {
            if (item.isSelected) {
              selected = item;
              break;
            }
          }
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetHeaderWidget(
                title: widget.title ?? tr("supported_health_insurance"),
              ),
              Gaps.vGap20,
              Flexible(
                child: ListView.builder(
                  itemCount: widget.insurance.length,
                  itemBuilder: (context, index) {
                    return InsuranceItemWidget(
                      model: widget.insurance[index],
                      onTap: widget.enableSelect
                          ? (_) => _onSelectItem(index)
                          : widget.onPressConfirm,
                      enableSelect: widget.enableSelect,
                    );
                  },
                ),
              ),
              if (widget.enableSelect && widget.insurance.any((element) => element.isSelected)) ...[
                Gaps.vGap20,
                DefaultButton(
                  title: tr("confirm"),
                  disabled: selected == null,
                  onTap: selected == null
                      ? null
                      : () {
                    Navigator.pop(context);
                    widget.onPressConfirm?.call(selected!);
                  },
                ),
              ],
            ],
          );
        },
      ),
    );;
  }
}
