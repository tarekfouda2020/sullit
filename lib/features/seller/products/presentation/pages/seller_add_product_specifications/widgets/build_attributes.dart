part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildAttributes extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildAttributes(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Attributes",
          style: AppTextStyle.s14_w400(
            color: context.colors.black,
          ),
        ),
        MultiDropDownField<String>(
          selectedItems: [],
          title: "Attributes",
          label: "Attributes",
          data: const [
            "test",
            "test2",
            "test3",
          ],
          onConfirm: (data) => sellerAddProductSpecificationsController
              .onAddAttribute(data!.toList()),
          onItemClick: (item) {},
          buttonsColor: context.colors.white,
        ),
        BlocBuilder<GenericBloc<List<String>>, GenericState<List<String>>>(
          bloc: sellerAddProductSpecificationsController.attributesCubit,
          builder: (context, showState) {
            return Visibility(
              visible: showState.data.isNotEmpty,
              child: Column(
                children: List.generate(
                  showState.data.length,
                  (index) => BuildAttributeItem(
                    title: showState.data[index],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
