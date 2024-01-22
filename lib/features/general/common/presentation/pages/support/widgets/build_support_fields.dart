part of 'support_w_imports.dart';

class BuildSupportFields extends StatelessWidget {
  final SupportController controller;

  const BuildSupportFields({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingVertical20PX,
      decoration: BoxDecoration(
        color: context.colors.background,
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
          InkWell(
            onTap: () => controller.sendMessage(),
            child: Icon(
              Icons.send,
              color: context.colors.primary,
            ),
          ),
          Expanded(
            child: GenericTextField(
              hint: tr("enterYourMsg"),
              controller: controller.msgController,
              fieldTypes: FieldTypes.chat,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.noValidate(),
              margin: Dimens.paddingHorizontal15PX,
              fillColor: context.colors.white,
            ),
          ),
          InkWell(
            onTap: () => controller.getImage(context),
            child: Icon(
              Icons.attach_file_outlined,
              color: context.colors.primary,
            ),
          ),
          Gaps.hGap22,
        ],
      ),
    );
  }
}
