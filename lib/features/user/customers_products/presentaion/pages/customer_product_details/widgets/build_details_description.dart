part of 'customer_product_details_w_imports.dart';

class BuildDetailsDescription extends StatelessWidget {
  final CustomerProduct detailsModel;

  const BuildDetailsDescription({super.key, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${tr('description')} : ",
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.vGap8,
          Text(
            detailsModel.description,
            style: AppTextStyle.s13_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
