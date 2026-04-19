part of 'pharmacy_address_imports.dart';

class PharmacyAddress extends StatefulWidget {
  const PharmacyAddress({Key? key}) : super(key: key);

  @override
  State<PharmacyAddress> createState() => _PharmacyAddressState();
}

class _PharmacyAddressState extends State<PharmacyAddress> {
  final PharmacyAddressController controller = PharmacyAddressController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: context.colors.customBackground,
       appBar: DefaultAppBar(
         title: tr("deliveryAddress"),
         bgColor: context.colors.white,
       ),
       body: Padding(
         padding: Dimens.paddingAll15PX,
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 tr("selectAddress"),
                 style: AppTextStyle.s16_w500(
                   color: context.colors.black,
                 ),
               ),
               Gaps.vGap15,
               Container(
                 constraints: BoxConstraints(
                   maxHeight: MediaQuery.sizeOf(context).height * 0.6,
                   minHeight: MediaQuery.sizeOf(context).height * 0.25,
                 ),
                 padding: Dimens.paddingAll15PX,
                 decoration: CustomDecoration(
                   thisColor: context.colors.white,
                   radius: Dimens.borderRadius10PX,
                   boxBorder: Border.all(
                     color: context.colors.borderColor,
                   ),
                 ),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Flexible(
                       child: PharmacyAddressListWidget(
                         controller: controller,
                       ),
                     ),
                     Gaps.vGap15,
                     DefaultButton(
                       title: "+ ${tr("addNewAddress")}",
                       onTap: () => controller.onAddNewAddress(context),
                       color: context.colors.white,
                       textColor: context.colors.primary,
                       borderColor: context.colors.primary,
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                       margin: EdgeInsets.zero,
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
       bottomNavigationBar: PharmacyAddressButtonsWidget(
         controller: controller,
       ),
     );
  }
}
