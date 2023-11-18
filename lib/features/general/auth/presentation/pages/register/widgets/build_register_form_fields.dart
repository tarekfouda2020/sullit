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
            fillColor: context.colors.authField,
            enableBorderColor: context.colors.white,
            focusBorderColor: context.colors.white,
            controller: registerController.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            margin: const EdgeInsets.only(bottom: Dimens.dp12,top: Dimens.dp8),
            radius: Dimens.borderRadius40PX,
          ),
          GenericTextField(
            fillColor: context.colors.authField,
            enableBorderColor: context.colors.white,
            focusBorderColor: context.colors.white,
            controller: registerController.emailController,
            fieldTypes: FieldTypes.normal,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
            type: TextInputType.emailAddress,
            hint: tr('email'),
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            radius: Dimens.borderRadius40PX,

          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerController.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.authField,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.white,
                hint: tr('password'),
                controller: registerController.passwordController,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: tr('password'),
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp12),
                radius: Dimens.borderRadius40PX,
                // suffixIcon: IconButton(
                //   onPressed: () => registerController.passwordCubit
                //       .onUpdateData(!state.data),
                //   icon: Icon(
                //     !state.data
                //         ? Icons.visibility
                //         : Icons.visibility_off,
                //     size: 17.sp,
                //     color: context.colors.primary,
                //   ),
                // ),
              );
            },
          ),
        ],
      ),
    );
  }
}
