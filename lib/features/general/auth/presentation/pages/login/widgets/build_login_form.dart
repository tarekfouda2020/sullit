part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               Expanded(
                child: BuildInputLabel(
                  label: tr("email_phone"),
                ),
              ),
              SwitchPhoneEmailWidget(controller: controller),
            ],
          ),
          BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: controller.switchEmailPhoneCubit,
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: state.data==1
                    ?PhoneFiledWidget(controller: controller)
                    :GenericTextField(
                  hint: tr("enterYourEmailHint"),
                  fillColor: context.colors.white,
                  contentPadding: Dimens.paddingH12V16,
                  enableBorderColor: context.colors.white,
                  focusBorderColor: context.colors.borderColor,
                  controller: controller.email,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.emailAddress,
                  action: TextInputAction.next,
                  validate: (value) => value?.validateEmail(),
                  margin: Dimens.headerTitlePadding,
                  radius: Dimens.borderRadius40PX,
                ),
              );
            },
          ),
          BuildInputLabel(
            label: tr("password"),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                hint: tr("enterYourPassword"),
                fillColor: context.colors.white,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.borderColor,
                focusBorderColor: context.colors.white,
                margin: Dimens.headerTitlePadding,
                controller: controller.password,
                fieldTypes: !state.data ? FieldTypes.password : FieldTypes
                    .normal,
                type: TextInputType.visiblePassword,
                onSubmit: () => controller.onSubmit(context),
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                suffixIcon: IconButton(
                  onPressed: () =>
                      controller.passwordCubit.onUpdateData(!state.data),
                  // splashColor: Colors.transparent,
                  icon: Icon(
                    !state.data ? Icons.visibility_outlined : Icons
                        .visibility_off_outlined,
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
