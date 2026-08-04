part of 'seller_money_withdraw_widgets_imports.dart';

class BuildSendRequestContent extends StatelessWidget {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController;

  const BuildSendRequestContent(
      {super.key, required this.sellerMoneyWithdrawController});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: AlertDialog(
        backgroundColor: context.colors.white,
        shape: RoundedRectangleBorder(borderRadius: Dimens.borderRadius5PX),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Send a withdraw request",
              style: AppTextStyle.s16_w500(
                color: context.colors.darkPurple,
              ),
            ),
            IconButton(
              onPressed: () => AutoRouter.of(context).pop(),
              icon: Icon(
                CupertinoIcons.multiply_circle,
                color: context.colors.darkPurple,
              ),
            )
          ],
        ),
        content: Form(
          key: sellerMoneyWithdrawController.formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select transferring to your account number",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
                DropdownTextField<DropDownModel>(
                  title: "Account",
                  hint: "Account",
                  fillColor: context.colors.white,
                  itemAsString: (u) => u.name,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  validate: (value) => validateDropDown(context),
                  data: const [
                    DropDownModel(id: 1, name: "test"),
                    DropDownModel(id: 2, name: "test2"),
                    DropDownModel(id: 3, name: "test3")
                  ],
                  onChange: (model) =>
                      sellerMoneyWithdrawController.onChangeAccount(model),
                ),
                Gaps.vGap10,
                Row(
                  children: [
                    Text(
                      "Amount ",
                      style: AppTextStyle.s14_w400(
                        color: context.colors.black,
                      ),
                    ),
                    Text(
                      "*",
                      style: AppTextStyle.s14_w400(
                        color: context.colors.primary,
                      ),
                    ),
                  ],
                ),
                GenericTextField(
                  hint: "Amount",
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.number,
                  action: TextInputAction.next,
                  controller: sellerMoneyWithdrawController.amountController,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  validate: (value) => value!.validateEmpty(),
                ),
                Gaps.vGap10,
                Text(
                  "Message",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
                GenericTextField(
                  hint: "message",
                  max: 8,
                  fieldTypes: FieldTypes.rich,
                  type: TextInputType.multiline,
                  controller: sellerMoneyWithdrawController.messageController,
                  action: TextInputAction.newline,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  validate: (value) => value!.noValidate(),
                ),
                DefaultButton(
                  title: "Send",
                  onTap: () {},
                  color: context.colors.darkPurple,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
