part of 'addresses_widgets_imports.dart';

class BuildAddNewAddress extends StatelessWidget {
  final AddAddressFor addAddressFor ;
  final VoidCallback onRefresh ;
  const BuildAddNewAddress({Key? key, required this.addAddressFor, required this.onRefresh, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        bool auth = context.read<DeviceCubit>().state.model.auth ;
        if(!auth){
          CustomToast.showAuthDialog(context);
          return;
        }
       var result = await AutoRouter.of(context).push(
          AddNewAddressRoute(addAddressFor: AddAddressFor.cart),
        );
       if(result == true){
         onRefresh.call();
       }
      } ,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal:Dimens.dp20, vertical: Dimens.dp10),
        padding: const EdgeInsets.all(Dimens.dp15),
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius10PX,
          color: context.colors.greyWhite,
          border: Border.all(color: context.colors.greyWhite),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add New Address",
              style: AppTextStyle.s15_w700(
                  color: context.colors.primary),
            ),
            Icon(Icons.add_circle, color: context.colors.primary),
          ],
        ),
      ),
    );
  }
}
