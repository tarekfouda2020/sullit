part of 'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordController controller;

  const ResetPasswordForm({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInputLabel(
            label: tr("newPassword"),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.authField,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.white,
                margin: Dimens.headerTitlePadding,
                controller: controller.password,
                radius: Dimens.borderRadius20PX,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                suffixIcon: IconButton(
                  onPressed: () =>
                      controller.passwordCubit.onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 17.sp,
                    color: context.colors.black,
                  ),
                ),
              );
            },
          ),
          BuildInputLabel(
            label: tr("confirmPassword"),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.confirmPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.authField,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.white,
                margin: Dimens.headerTitlePadding,
                controller: controller.confirmPassword,
                radius: Dimens.borderRadius20PX,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(
                    pass: controller.password.text),
                suffixIcon: IconButton(
                  onPressed: () =>
                      controller.confirmPasswordCubit.onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 17.sp,
                    color: context.colors.black,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
