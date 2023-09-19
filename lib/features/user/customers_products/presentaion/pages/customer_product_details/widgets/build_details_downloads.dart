part of 'customer_product_details_w_imports.dart';

class BuildDetailsDownloads extends StatelessWidget {
  final CustomerProduct detailsModel;

  const BuildDetailsDownloads({super.key, required this.detailsModel});

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
            "Downloads : ",
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.vGap10,
          Center(
            child: DefaultButton(
              title: "PDF",
              width: 150.w,
              onTap: () =>
                  HelperMethods.instance.launchURL(url: detailsModel.pdf),
            ),
          ),
        ],
      ),
    );
  }
}
