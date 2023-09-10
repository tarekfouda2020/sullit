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
        children: [
          GenericTextField(
            controller: controller.email,
            fieldTypes: FieldTypes.readonly,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            label: "Email",
          ),
          GenericTextField(
            controller: controller.code,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            margin: Dimens.inputFieldMargin,
            validate: (value) => value?.validateEmpty(),
            label: "Code",
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: controller.password,
                fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Password",
                suffixIcon: IconButton(
                  onPressed: () => controller.passwordCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.primary,
                  ),
                ),
              );
            },
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.confirmPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: controller.confirmPassword,
                fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Confirm Password",
                margin: Dimens.inputFieldMargin,
                suffixIcon: IconButton(
                  onPressed: () => controller.confirmPasswordCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.primary,
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
