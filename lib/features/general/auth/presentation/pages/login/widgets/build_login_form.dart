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
          Text(
            'Email',
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
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
            margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
            radius: Dimens.borderRadius40PX,
          ),
          Text(
            'Password',
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.authField,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.white,
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
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
                    !state.data
                        ? Icons.visibility
                        : Icons.visibility_off_outlined,
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
