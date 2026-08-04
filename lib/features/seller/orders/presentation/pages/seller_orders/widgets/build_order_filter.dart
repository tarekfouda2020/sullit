part of 'seller_orders_widgets_imports.dart';

class BuildOrderFilter extends StatelessWidget {
  final SellerOrdersController sellerOrdersController;

  const BuildOrderFilter({super.key, required this.sellerOrdersController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: sellerOrdersController.showFilterCubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dp15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GenericTextField(
                      hint: "Type Order Code",
                      fieldTypes: FieldTypes.normal,
                      type: TextInputType.text,
                      controller: sellerOrdersController.orderCodeController,
                      action: TextInputAction.search,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: Dimens.dp10, vertical: Dimens.dp15),
                      validate: (value) => value!.noValidate(),
                    ),
                  ),
                  Gaps.hGap10,
                  InkWell(
                    onTap: () => sellerOrdersController.showFilterCubit
                        .onUpdateData(!state.data),
                    child: Container(
                      padding: const EdgeInsets.all(Dimens.dp5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.darkPurple,
                      ),
                      child: const Icon(Icons.filter_alt_outlined, size: 20),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: state.data,
                replacement: Gaps.vGap10,
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownTextField<DropDownModel>(
                        title: "Payment Status",
                        hint: "Payment Status",
                        fillColor: context.colors.white,
                        itemAsString: (u) => u.name,
                        margin:
                            const EdgeInsets.symmetric(vertical: Dimens.dp10),
                        selectedItem: sellerOrdersController.paymentFilterModel,
                        validate: (value) => validateDropDown(context),
                        data: const [
                          DropDownModel(id: 1, name: "test"),
                          DropDownModel(id: 2, name: "test2"),
                          DropDownModel(id: 3, name: "test3")
                        ],
                        onChange: (model) =>
                            sellerOrdersController.onChangePayment(model),
                      ),
                    ),
                    Gaps.hGap10,
                    Expanded(
                      child: DropdownTextField<DropDownModel>(
                        title: "Deliver Status",
                        hint: "Deliver Status",
                        fillColor: context.colors.white,
                        itemAsString: (u) => u.name,
                        margin:
                            const EdgeInsets.symmetric(vertical: Dimens.dp10),
                        selectedItem: sellerOrdersController.statusFilterModel,
                        validate: (value) => validateDropDown(context),
                        data: const [
                          DropDownModel(id: 1, name: "test"),
                          DropDownModel(id: 2, name: "test2"),
                          DropDownModel(id: 3, name: "test3")
                        ],
                        onChange: (model) =>
                            sellerOrdersController.onChangeStatus(model),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
