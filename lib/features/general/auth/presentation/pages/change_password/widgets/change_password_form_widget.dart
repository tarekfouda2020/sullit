part of 'change_password_widgets_imports.dart';


class ChangePasswordFormWidget extends StatelessWidget {
  final ChangePasswordController controller;
  const ChangePasswordFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.oldPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                hint: tr("currentPassword"),
                fillColor: context.colors.white,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.white,
                margin: Dimens.headerTitlePadding,
                controller: controller.oldPassword,
                radius: Dimens.borderRadius40PX,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                suffixIcon: IconButton(
                  onPressed: () =>
                      controller.oldPasswordCubit.onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 17.sp,
                    color: context.colors.black,
                  ),
                ),
              );
            },
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                hint: tr("newPassword"),
                fillColor: context.colors.white,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.borderColor,
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
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.confirmPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                hint: tr("confirmPassword"),
                fillColor: context.colors.white,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.white,
                margin: Dimens.headerTitlePadding,
                controller: controller.confirmPassword,
                radius: Dimens.borderRadius20PX,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(pass: controller.password.text),
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
