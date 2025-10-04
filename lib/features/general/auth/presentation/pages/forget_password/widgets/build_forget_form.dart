part of 'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;

  const BuildForgetForm({Key? key, required this.forgetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgetPasswordController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInputLabel(
            label: tr("email"),
          ),
          GenericTextField(
            hint: tr("enterYourEmailHint"),
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
            fillColor: context.colors.white,
            contentPadding: Dimens.paddingH12V16,
            enableBorderColor: context.colors.white,
            focusBorderColor: context.colors.borderColor,
            controller: forgetPasswordController.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            margin: Dimens.headerTitlePadding,
            radius: Dimens.borderRadius40PX,
          ),
        ],
      ),
    );
  }
}
