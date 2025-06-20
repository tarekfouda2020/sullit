part of 'build_register_widgets_imports.dart';

class BuildRegisterFormFields extends StatelessWidget {
  final RegisterController registerController;

  const BuildRegisterFormFields({Key? key, required this.registerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInputLabel(label: tr('userName')),
          GenericTextField(
            hint: tr('insertUserName'),
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
            fillColor: context.colors.white,
            enableBorderColor: context.colors.borderColor,
            focusBorderColor: context.colors.borderColor,
            controller: registerController.nameController,
            contentPadding: Dimens.paddingH32V16,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            margin:
            const EdgeInsets.only(bottom: Dimens.dp12, top: Dimens.dp8),
            radius: Dimens.borderRadius40PX,
          ),
          BuildInputLabel(label: tr('email')),
          GenericTextField(
            fillColor: context.colors.white,
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
            enableBorderColor: context.colors.borderColor,
            contentPadding: Dimens.paddingH32V16,
            focusBorderColor: context.colors.borderColor,
            controller: registerController.emailController,
            fieldTypes: FieldTypes.normal,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
            type: TextInputType.emailAddress,
            hint: tr('enterYourEmailHint'),
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            radius: Dimens.borderRadius40PX,
          ),
          BuildInputLabel(label: tr('password')),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerController.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.white,
                hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.borderColor,
                controller: registerController.passwordController,
                contentPadding: Dimens.paddingH32V16,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                hint: tr('enterYourPassword'),
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
                radius: Dimens.borderRadius40PX,
                suffixIcon: IconButton(
                  onPressed: () =>
                      registerController.passwordCubit
                          .onUpdateData(!state.data),
                  // splashColor: Colors.transparent,
                  icon: Icon(
                    !state.data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.textColor,
                  ),
                ),
              );
            },
          ),
          BuildInputLabel(label: tr('confirmPassword')),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerController.confirmPasswordCubit,
            builder: (context, state) {
              return  GenericTextField(
                fillColor: context.colors.white,
                hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
                contentPadding: Dimens.paddingH32V16,
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.borderColor,
                controller: registerController.passwordController,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                hint: tr('enterYourPassword'),
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
                radius: Dimens.borderRadius40PX,
                suffixIcon: IconButton(
                  onPressed: () =>
                      registerController.confirmPasswordCubit
                          .onUpdateData(!state.data),
                  // splashColor: Colors.transparent,
                  icon: Icon(
                    !state.data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.textColor,
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
