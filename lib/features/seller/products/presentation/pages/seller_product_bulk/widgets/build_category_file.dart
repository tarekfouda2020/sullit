part of 'seller_product_bulk_widgets_imports.dart';

class BuildCategoryFile extends StatelessWidget {
  const BuildCategoryFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ).r,
        padding: const EdgeInsets.all(8).r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite,
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            BuildBulkText(
              text: 'Category and brand should be numerical id',
            ),
            BuildBulkText(
              text: 'you can download pdf to get category and brand id',
            ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                      title: "Download Categories",
                      width: 120.w,
                      height: 25.h,
                      fontSize: 10,
                      color: context.colors.darkPurple,
                      borderRadius: BorderRadius.circular(5).r,
                      margin: const EdgeInsets.symmetric(vertical: 10).r,
                      onTap: () {}),
                ),
                Gaps.hGap10,
                Expanded(
                  child: DefaultButton(
                      title: "Download Brands",
                      width: 120.w,
                      height: 25.h,
                      fontSize: 10,
                      color: context.colors.darkPurple,
                      borderRadius: BorderRadius.circular(5).r,
                      margin: const EdgeInsets.symmetric(vertical: 10).r,
                      onTap: () {}),
                )
              ],
            )
          ],
        ));
  }
}
