part of 'product_details_widgets_imports.dart';

class CustomizeOrderItemWidget extends StatelessWidget {
  final ProductOptionModel optionModel;
  final ProductDetailsController controller;

  const CustomizeOrderItemWidget({
    super.key,
    required this.optionModel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.standardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          Text(
            optionModel.name,
            style: AppTextStyle.s18_w600(
              color: context.colors.black,
            ),
          ),
          Gaps.vGap8,
          ...List.generate(
            optionModel.values.length,
            (index) {
              final value = optionModel.values[index];
              return BlocBuilder<GenericBloc<List<int>>, GenericState<List<int>>>(
                bloc: controller.getSelectionBloc(optionModel.id),
                builder: (context, state) {
                  final selectedList = state.data;
                  final isRadio = optionModel.type == 'radio';
                  final itemValue = value.id;
                  final isSelectedItem = selectedList.contains(itemValue);
                  return CustomizeOptionsItem(
                    valueModel: value,
                    type: optionModel.type,
                    isSelected: isSelectedItem,
                    onTap: () {
                      final bloc = controller.getSelectionBloc(optionModel.id);
                      if (isRadio) {
                        bloc.onUpdateData([itemValue]);
                      } else {
                        final updatedList = List<int>.from(selectedList);
                        if (updatedList.contains(itemValue)) {
                          updatedList.remove(itemValue);
                        } else {
                          updatedList.add(itemValue);
                        }
                        bloc.onUpdateData(updatedList);
                      }
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
