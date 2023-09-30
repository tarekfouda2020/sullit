part of'register_widgets_imports.dart';
class RegisterShopFields extends StatelessWidget {
  final RegisterShopController  registerShopController;
  const RegisterShopFields({Key? key, required this.registerShopController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerShopController.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,
            controller: registerShopController.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: tr('yourName'),
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,

            controller: registerShopController.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: tr('yourEmail'),
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
              bloc: registerShopController.passwordCubit,
              builder: (context, state) {
                return  GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,
                  controller: registerShopController.passwordController,
                  fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: tr('yourPassword'),
                  margin: const EdgeInsets.only(top: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () =>
                        registerShopController.passwordCubit.onUpdateData(!state.data),
                    icon: Icon(
                      !state.data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.primary,
                    ),
                  ),
                );
              }),
          BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
              bloc: registerShopController.confirmpasswordCubit,
              builder: (context, state) {
                return  GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,
                  controller: registerShopController.confirmPasswordController,
                  fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: tr('confirmPassword'),
                  margin: const EdgeInsets.only(top: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () =>
                        registerShopController.confirmpasswordCubit.onUpdateData(!state.data),
                    icon: Icon(
                      !state.data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.primary,
                    ),
                  ),
                );
              }),
          Divider(color: context.colors.disableGray,height: 50,),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              tr('basicInfo'),
              style: AppTextStyle.s16_w500(color: context.colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          Gaps.vGap20,

          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,
            controller: registerShopController.shopNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: tr('shopName'),
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,

            controller: registerShopController.shopAddressController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateAddress(),
            label: tr('shopAddress'),
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10).r,

            controller: registerShopController.shopEmailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: tr('shopEmail'),
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),

        ],
      ),
    );
  }
}
