part of 'contact_us_widgets_imports.dart';

class BuildContactUsFields extends StatelessWidget {
  final ContactUsController contactUsData;

  const BuildContactUsFields({Key? key, required this.contactUsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactUsData.formKey,
      child: Flexible(
        child: ListView(
          padding: Dimens.paddingAll15PX,
          children: [
            GenericTextField(
              controller: contactUsData.name,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              fillColor: context.colors.white,
              validate: (value) => value?.validateName(),
              label: tr('userName'),
              margin: Dimens.paddingVertical10PX,
            ),
            GenericTextField(
              fillColor: context.colors.white,
              controller: contactUsData.email,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmail(),
              label: tr('mail'),
              margin: Dimens.paddingVertical10PX,
            ),
            GenericTextField(
              fillColor: context.colors.white,
              controller: contactUsData.phone,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.phone,
              action: TextInputAction.next,
              validate: (value) => value?.validatePhone(),
              label: tr('phone'),
              margin: Dimens.paddingVertical10PX,
            ),
            GenericTextField(
              fillColor: context.colors.white,
              controller: contactUsData.subject,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: tr('title'),
              margin: Dimens.paddingVertical10PX,
            ),
            GenericTextField(
              fillColor: context.colors.white,
              controller: contactUsData.message,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.text,
              action: TextInputAction.done,
              max: 4,
              validate: (value) => value?.validateEmpty(),
              label: tr('yourMsg'),
              margin: Dimens.paddingVertical10PX,
            ),
          ],
        ),
      ),
    );
  }
}
