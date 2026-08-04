part of 'profile_widgets_imports.dart';

class PhoneInputAndVerify extends StatelessWidget {
  final ProfileController controller;

  const PhoneInputAndVerify({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    UserDomainModel? user = context.watch<UserCubit>().state.model;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildInputLabel(label: tr('phoneNumber')),
        Row(
          children: [
            BlocProvider.value(
              value: controller.countryCubit,
              child: BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
                builder: (context, state) {
                  return Expanded(
                    flex: 2,
                    child: GenericTextField(
                      controller: controller.phoneController,
                      fieldTypes: FieldTypes.normal,
                      fillColor: context.colors.white,
                      type: TextInputType.number,
                      action: TextInputAction.done,
                      // contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      // contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 0,top:16,bottom: 16 ),
                      validate: (value) => value?.isValidUAEPhone(value),
                      hint: tr("phone"),
                      margin: Dimens.marginTop5,
                      // prefixIcon: _buildPrefixIcon(context, state),
                      prefixIcon: PhoneFieldPrefixWidget(
                          countryCubit: controller.countryCubit),
                    ),
                  );
                },
              ),
            ),
            // Gaps.hGap5,
            // BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            //   bloc: controller.verifyPhoneCubit,
            //   builder: (context, state) {
            //     return Visibility(
            //       visible: user?.fullPhone != "",
            //       child: Visibility(
            //         visible: !state.data,
            //         child: Expanded(
            //           child: InkWell(
            //             onTap: () => controller.onActivePhone(context),
            //             child: Container(
            //               padding: Dimens.paddingVertical15PX,
            //               decoration: BoxDecoration(
            //                 borderRadius: Dimens.borderRadius30PX,
            //                 color: context.colors.primary,
            //               ),
            //               child: Text(
            //                 tr('verifyPhone'),
            //                 textAlign: TextAlign.center,
            //                 style: AppTextStyle.s12_w500(
            //                   color: context.colors.white,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ],
    );
  }

  // Widget _buildPrefixIcon(BuildContext context, GenericState<Country?> state) {
  //   return GestureDetector(
  //     onTap: () => controller.showCountryCode(context),
  //     child: Visibility(
  //       visible: state.data?.name != "",
  //       replacement: Padding(
  //         padding: const EdgeInsetsDirectional.only(start: 23,top: 16,end: 17),
  //         child: Text(
  //           "Select Country",
  //           style: AppTextStyle.s14_w400(color: context.colors.black),
  //         ),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsetsDirectional.only(start: 23),
  //         child: Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Image.asset(
  //               state.data!.flag,
  //               width: 25,
  //               height: 25,
  //               package: "country_calling_code_picker",
  //             ),
  //             Gaps.hGap5,
  //             Text(
  //               state.data?.callingCode ?? "",
  //               style: AppTextStyle.s14_w400(color: context.colors.black),
  //             ),
  //             Gaps.hGap5,
  //             Icon(
  //               Icons.keyboard_arrow_down_rounded,
  //               color: context.colors.black,
  //             ),
  //             Gaps.hGap17,
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
