part of 'add_new_address_widgets_imports.dart';

class BuildAddAddressForm extends StatelessWidget {
  final AddNewAddressController controller;

  const BuildAddAddressForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Flexible(
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp20),
          children: [
            BuildInputLabel(
              label: tr("location"),
            ),
            GenericTextField(
              type: TextInputType.none,
              controller: controller.locationController,
              fieldTypes: FieldTypes.clickable,
              onTab: ()  => controller.routeToDetectLocation(context),
              action: TextInputAction.done,
              fillColor: context.colors.white,
              validate: (value) => value?.validateEmpty(),
              hint: tr("detectLocation"),
              margin: Dimens.paddingVertical10PX,
            ),
            BuildInputLabel(
              label: tr("addressName"),
            ),
            GenericTextField(
              controller: controller.addressController,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              fillColor: context.colors.white,
              validate: (value) => value?.validateEmpty(),
              hint: tr("enterAddressName"),
              margin: Dimens.paddingVertical10PX,
            ),
            LocationFieldsWidget(controller: controller),
            UnitFieldsWidget(controller: controller),
            // BuildInputLabel(
            //   label: tr("postalCode"),
            // ),
            // GenericTextField(
            //   controller: controller.postalCodeController,
            //   fieldTypes: FieldTypes.normal,
            //   type: TextInputType.text,
            //   fillColor: context.colors.white,
            //   action: TextInputAction.next,
            //   validate: (value) => value?.validateEmpty(),
            //   hint: tr("postalCode"),
            //   margin: Dimens.paddingVertical10PX,
            // ),
            BuildInputLabel(
              label: tr("phoneNumber"),
            ),
            BlocBuilder<GenericBloc<package.Country?>,
                GenericState<package.Country?>>(
              bloc: controller.countryCodeCubit,
              builder: (context, state) {
                return  GenericTextField(
                  controller: controller.phoneController,
                  fieldTypes: FieldTypes.normal,
                  fillColor: context.colors.white,
                  type: TextInputType.number,
                  action: TextInputAction.done,
                  validate: (value) =>
                      ((state.data?.callingCode ?? "") + (value ?? ""))
                          .validatePhone(),
                  // validate: (value) => value?.validatePhone(),
                  hint: tr("phoneNumber"),
                  margin: Dimens.paddingVertical10PX,
                  prefixIcon: _buildPrefixIcon(context,state),
                );
              },
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildPrefixIcon(BuildContext context, GenericState<package.Country?> state) {
    return GestureDetector(
      onTap: () => controller.showCountryCode(context),
      child: Visibility(
        visible: state.data != null,
        replacement: Padding(
          padding: const EdgeInsetsDirectional.only(start: 23,top: 16,end: 17),
          child: Text(
            tr("selectCountry"),
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 23),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(state.data?.flag != null)
              Image.asset(
                state.data!.flag,
                width: 25,
                height: 25,
                package: "country_calling_code_picker",
              ),
              Gaps.hGap5,
              Text(
                state.data?.callingCode ?? "",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              if(state.data?.callingCode != null)
              Gaps.hGap5,
              if(state.data?.callingCode != null)
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: context.colors.black,
              ),
              Gaps.hGap17,
            ],
          ),
        ),
      ),
    );
  }


}
