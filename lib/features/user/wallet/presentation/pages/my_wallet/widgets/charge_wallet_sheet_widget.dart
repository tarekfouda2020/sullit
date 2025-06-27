part of 'my_wallet_widgets_imports.dart';

class ChargeWalletSheetWidget extends StatelessWidget {
  final MyWalletController controller;
  const ChargeWalletSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: context.colors.customBackground,
          borderRadius: Dimens.sheetBorderRadius,
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(title: tr('chargeWallet')),
          Gaps.vGap24,
          BuildInputLabel(
            label: tr("amount"),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.done,
            validate: (value) => value?.validateEmpty(),
            hint: tr('enterAmount'),
            controller: controller.amountController,
            margin: Dimens.marginTop5Bottom12,
            fillColor: context.colors.white,
          ),
          BuildInputLabel(
            label: tr("paymentMethod"),
          ),
          DropdownTextField<WalletTypes>(
            itemAsString: (item) => (item).name,
            fillColor: context.colors.white,
            textSize: 16.sp,
            title: tr('paymentMethod'),
            margin: Dimens.marginTop5Bottom12,
            hint: tr('paymentMethod'),
            dropKey: controller.walletController,
            useName: true,
            onFind: (data) => controller.getWalletTypes(),
            selectedItem: controller.walletTypeModel,
            onChange: (value) => controller.onChangeType(value),
            validate: (value) => validateDropDown(value),
            contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
          ),
          Gaps.vGap32,
          DefaultButton(
            title: tr('confirm'),
            height: 35.h,
            onTap: () =>controller.rechargeWallet(context),
          ),
        ],
      ),
    );
  }
}
