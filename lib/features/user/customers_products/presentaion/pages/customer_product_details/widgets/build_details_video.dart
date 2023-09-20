part of 'customer_product_details_w_imports.dart';

class BuildDetailsVideo extends StatelessWidget {
  final CustomerProduct detailsModel;
  final CustomerProductDetailsController controller;

  const BuildDetailsVideo(
      {super.key, required this.detailsModel, required this.controller});

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
            "Video : ",
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.vGap10,
          InkWell(
            onTap: () => controller.navigateToVideoViewer(context),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(Res.logo),
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.colors.greyWhite),
              ),
              child: Icon(
                Icons.play_circle_fill,
                size: 35,
                color: context.colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
