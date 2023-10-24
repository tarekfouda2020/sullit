
part of  'classified_products_w_imports.dart';

class BuildImagesTabs extends StatelessWidget {
  const BuildImagesTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: Dimens.paddingVertical10PX,
      indicator: CustomDecoration(),
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Text(
          tr('selFile'),
          style: AppTextStyle.s12_w400(
            color: context.colors.black,
          ),
        ),
        Text(
          tr('uploadFile'),
          style: AppTextStyle.s12_w400(
            color: context.colors.black,
          ),
        ),
      ],
    );
  }
}
