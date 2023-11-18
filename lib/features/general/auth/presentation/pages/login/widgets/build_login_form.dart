part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: Dimens.paddingHorizontal20PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildInputLabel(
              label: 'Email',
            ),
            GenericTextField(
              fillColor: context.colors.authField,
              enableBorderColor: context.colors.white,
              focusBorderColor: context.colors.white,
              controller: controller.email,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              margin: Dimens.headerTitlePadding,
              radius: Dimens.borderRadius40PX,
            ),
            const BuildInputLabel(
              label: 'Password',
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
                  radius: Dimens.borderRadius40PX,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                  validate: (value) => value?.validateEmpty(),
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
          ],
        ),
      ),
    );
  }
}
