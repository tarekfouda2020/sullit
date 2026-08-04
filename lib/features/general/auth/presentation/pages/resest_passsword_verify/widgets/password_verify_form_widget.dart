part of 'reset_password_verify_widgets_imports.dart';

class PasswordVerifyForm extends StatelessWidget {
  final RestPasswordVerifyController controller;
  const PasswordVerifyForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInputLabel(
            label: tr("code"),
          ),
          GenericTextField(
            hint: tr("enterCodeSentToYourEmail"),
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
            fillColor: context.colors.white,
            controller: controller.code,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            margin: Dimens.headerTitlePadding,
            radius: Dimens.borderRadius40PX,
          ),
          // BuildInputLabel(
          //   label: tr("email"),
          // ),
          // GenericTextField(
          //   hint: tr("enterYourEmailHint"),
          //   hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
          //   fillColor: context.colors.white,
          //   controller: controller.email,
          //   fieldTypes: FieldTypes.normal,
          //   type: TextInputType.emailAddress,
          //   action: TextInputAction.next,
          //   validate: (value) => value?.validateEmail(),
          //   margin: Dimens.headerTitlePadding,
          //   radius: Dimens.borderRadius40PX,
          // ),
          BuildInputLabel(label: tr('password')),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.white,
                hintStyle:
                    AppTextStyle.s14_w400(color: context.colors.textColor),
                controller: controller.password,
                contentPadding: Dimens.paddingH12V16,
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
                      controller.passwordCubit.onUpdateData(!state.data),
                  // splashColor: Colors.transparent,
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.textColor,
                  ),
                ),
              );
            },
          ),
          BuildInputLabel(label: tr('confirmPassword')),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.confirmPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.white,
                hintStyle:
                    AppTextStyle.s14_w400(color: context.colors.textColor),
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.borderColor,
                controller: controller.confirmPassword,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(
                    pass: controller.password.text),
                hint: tr('enterYourPassword'),
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
                radius: Dimens.borderRadius40PX,
                suffixIcon: IconButton(
                  onPressed: () =>
                      controller.confirmPasswordCubit.onUpdateData(!state.data),
                  // splashColor: Colors.transparent,
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
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
