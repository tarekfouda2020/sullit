part of 'seller_profile_widgets_imports.dart';

class BuildSellerProfileBasicInfo extends StatelessWidget {
  final SellerProfileController sellerProfileController;
  const BuildSellerProfileBasicInfo(
      {Key? key, required this.sellerProfileController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Basic Info ",
            style: AppTextStyle.s16_w500(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerProfileController.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName,
            label: "Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            controller: sellerProfileController.emailController,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: "E-mail",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: sellerProfileController.passwordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                          .r,
                  controller: sellerProfileController.passwordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: "Password",
                  margin: const EdgeInsets.only(top: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () => sellerProfileController.passwordCubit
                        .onUpdateData(!state.data),
                    icon: Icon(
                      !state.data
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.darkPurple,
                    ),
                  ),
                );
              }),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: sellerProfileController.confirmPasswordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                          .r,
                  controller: sellerProfileController.confirmPasswordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: "Confirm Your Password",
                  margin: const EdgeInsets.only(top: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () => sellerProfileController
                        .confirmPasswordCubit
                        .onUpdateData(!state.data),
                    icon: Icon(
                      !state.data
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.darkPurple,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
