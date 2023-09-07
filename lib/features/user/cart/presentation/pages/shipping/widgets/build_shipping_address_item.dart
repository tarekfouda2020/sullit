part of 'shipping_widgets_imports.dart';

class BuildShippingAddressItem extends StatelessWidget {
  final ShippingController controller ;
  final Address address ;
  const BuildShippingAddressItem({Key? key, required this.controller, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = controller.addressesBloc.state.data.indexOf(address);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Dimens.dp20,
        vertical: Dimens.dp10,
      ),
      padding: const EdgeInsets.all(
        Dimens.dp10,
      ),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio<bool>(
            value: false,
            groupValue: !controller.addressesBloc.state.data[index].selected!,
            onChanged: (val) =>
                controller.onSelectAddress(address, val, context, index),
            activeColor: context.colors.primary,
          ),
          Gaps.hGap10,
          Flexible(
            child: Column(
              children: [
                BuildAddressTitleItem(
                  title: "Address",
                  desc: address.address!,
                ),
                BuildAddressTitleItem(
                  title: "Postal code",
                  desc: address.postalCode!,
                ),
                BuildAddressTitleItem(
                  title: "City",
                  desc: address.city?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "State",
                  desc: address.state?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "Country",
                  desc: address.country?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "Phone",
                  desc: address.phone ?? "",
                )
              ],
            ),
          ),
          Visibility(
            visible: address.isActive != true,
            child: InkWell(
              onTap: () async {
              var result =  await  AutoRouter.of(context).push(ActiveAccountRoute(phone: address.phone!));
              if(result == true){
                address.isActive = true ;
                controller.addressesBloc.onUpdateData(controller.addressesBloc.state.data);
              }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 5.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.colors.primary,
                ),
                child: Text('Verify Phone',
                    style: AppTextStyle.s12_w300(color: context.colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

