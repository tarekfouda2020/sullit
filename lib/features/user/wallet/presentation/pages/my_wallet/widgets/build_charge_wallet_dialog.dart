part of 'my_wallet_widgets_imports.dart';

class BuildChargeWalletDialog extends StatelessWidget {
  final MyWalletController controller;

  const BuildChargeWalletDialog({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding: Dimens.paddingAll15PX,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr('rechargeWallet'),
                    style: AppTextStyle.s15_w700(color: context.colors.black),
                  ),
                  IconButton(
                    onPressed: () => AutoRouter.of(context).pop(),
                    icon: Icon(
                      Icons.close,
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                label: tr('amount'),
                controller: controller.amountController,
                margin: Dimens.paddingVertical5PX,
              ),
              DropdownTextField<WalletTypes>(
                itemAsString: (item) => (item).name,
                fillColor: context.colors.white,
                textSize: 16.sp,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                title: tr('paymentMethod'),
                margin: Dimens.paddingVertical10PX,
                label: tr('paymentMethod'),
                dropKey: controller.walletController,
                useName: true,
                onFind: (data) => controller.getWalletTypes(),
                selectedItem: controller.walletTypeModel,
                onChange: (value) => controller.onChangeType(value),
                validate: (value) => validateDropDown(value),
              ),
              DefaultButton(
                title: tr('confirm'),
                height: 35.h,
                margin: Dimens.paddingAll10PX,
                onTap: () => controller.rechargeWallet(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
