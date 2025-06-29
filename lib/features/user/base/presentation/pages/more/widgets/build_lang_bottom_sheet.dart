part of 'more_widgets_imports.dart';

class BuildLangBottomSheet extends StatelessWidget {
  final MoreController controller ;
  const BuildLangBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => controller.setUserLang(context, 'en'),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(tr("langEn"), style: AppTextStyle.s14_w600(color: context.colors.black),),
            ),
          ),
          Divider(thickness: 1, color: context.colors.greyWhite),
          InkWell(
            onTap: () => controller.setUserLang(context, 'ar'),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(tr("langAr"), style: AppTextStyle.s14_w600(color: context.colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
