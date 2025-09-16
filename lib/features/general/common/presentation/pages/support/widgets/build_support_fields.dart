part of 'support_w_imports.dart';

class BuildSupportFields extends StatelessWidget {
  final SupportController controller;

  const BuildSupportFields({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      padding: Dimens.paddingVertical20PX,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        boxShadow: [
          BoxShadow(
            color: context.colors.offWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          Gaps.hGap22,
          Expanded(
            child: GenericTextField(
              hint: tr("enterYourMsg"),
              enableBorderColor: context.colors.borderColor,
              focusBorderColor: context.colors.borderColor,
              controller: controller.msgController,
              fieldTypes: FieldTypes.chat,
              type: TextInputType.text,
              action: TextInputAction.send,
              onSubmit: () => controller.sendMessage(),
              radius: Dimens.borderRadius30PX,
              validate: (value) => value?.noValidate(),
              fillColor: context.colors.white,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                  onTap: () => controller.getImage(context),
                  child: SvgPicture.asset(
                      Res.attachments
                  ),
                ),
              ),
            ),
          ),
          Gaps.hGap17,
          Transform.rotate(
            angle: lang == LangCodeHelper.langAR ? pi : 0,
            child: InkWell(
              onTap: () => controller.sendMessage(),
                child: SvgPicture.asset(Res.sendMessage)
            ),
          ),
          Gaps.hGap22,
        ],
      ),
    );
  }
}
