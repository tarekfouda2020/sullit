part of'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;
  const BuildForgetForm({Key? key,required this.forgetPasswordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgetPasswordController.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
            ),
            GenericTextField(
              fillColor: context.colors.authField,
              enableBorderColor: context.colors.white,
              focusBorderColor: context.colors.white,
              controller: forgetPasswordController.email,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              margin: Dimens.headerTitlePadding,
              radius: Dimens.borderRadius20PX,
            ),
          ],
        ),
      ),
    );
  }
}
