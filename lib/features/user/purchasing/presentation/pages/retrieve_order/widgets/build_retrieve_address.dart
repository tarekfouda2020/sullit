part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveAddress extends StatelessWidget {
  final RetrieveOrderController controller;

  const BuildRetrieveAddress({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.navigateToAddresses(context),
      child: BlocBuilder<GenericBloc<Address?>, GenericState<Address?>>(
        bloc: controller.addressCubit,
        builder: (context, state) {
          return Column(
            children: [
              Gaps.vGap15,
              Container(
                padding: Dimens.paddingAll20PX,
                decoration: CustomDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add New Address",
                      style:
                          AppTextStyle.s15_w700(color: context.colors.primary),
                    ),
                    Icon(Icons.add_circle, color: context.colors.primary),
                  ],
                ),
              ),
              Visibility(
                visible: state.data != null,
                replacement: Gaps.vGap24,
                child: Container(
                  margin: Dimens.paddingVertical15PX,
                  padding: Dimens.paddingAll15PX,
                  decoration: CustomDecoration(),
                  child: Column(
                    children: [
                      BuildAddressTitleItem(
                        title: "Address",
                        desc: state.data?.address ?? "",
                      ),
                      BuildAddressTitleItem(
                        title: "Postal code",
                        desc: state.data?.postalCode ?? "",
                      ),
                      BuildAddressTitleItem(
                        title: "City",
                        desc: state.data?.city?.name ?? "",
                      ),
                      BuildAddressTitleItem(
                        title: "State",
                        desc: state.data?.state?.name ?? "",
                      ),
                      BuildAddressTitleItem(
                        title: "Country",
                        desc: state.data?.country?.name ?? "",
                      ),
                      BuildAddressTitleItem(
                        title: "Phone",
                        desc: state.data?.phone ?? "",
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
