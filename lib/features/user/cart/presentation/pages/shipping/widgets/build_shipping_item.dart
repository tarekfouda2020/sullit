part of 'shipping_widgets_imports.dart';

class BuildShippingItem extends StatelessWidget {
  const BuildShippingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      padding: const EdgeInsets.all(Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio(
            value: true,
            groupValue: false,
            onChanged: (val) {},
            activeColor: context.colors.primary,
          ),
          Gaps.hGap10,
          Expanded(
            child: Column(
              children: const [
                BuildAddressTitleItem(
                  title: "Address",
                  desc: "Egypt Egypt Egypt Egypt Egypt Egypt",
                ),
                BuildAddressTitleItem(
                  title: "Postal code",
                  desc: "1323242342323",
                ),
                BuildAddressTitleItem(
                  title: "City",
                  desc: "Egypt",
                ),
                BuildAddressTitleItem(title: "State", desc: "Egypt"),
                BuildAddressTitleItem(title: "Country", desc: "Egypt"),
                BuildAddressTitleItem(title: "Phone", desc: "01234567890")
              ],
            ),
          ),
          PopupMenuButton(
            color: context.colors.white,
            elevation: 20,
            icon: Container(
              padding: const EdgeInsets.all(Dimens.dp5),
              margin: const EdgeInsets.all(Dimens.dp5),
              decoration: BoxDecoration(
                color: context.colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: context.colors.gray.withOpacity(.5),
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: context.colors.blackOpacity,
                size: 12.sp,
              ),
            ),
            enabled: true,
            onSelected: (int value) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text(
                  "Edit",
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
