part of 'seller_order_details_widgets_imports.dart';

class BuildCustomerInfo extends StatelessWidget {
  const BuildCustomerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp15),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              "Tarek Fouda",
              style: AppTextStyle.s15_w700(
                color: context.colors.darkPurple,
              ),
            ),
          ),
          const BuildPaddingText(title: "a@a.com"),
          const BuildPaddingText(title: "+98765432"),
          const BuildPaddingText(
              title: "Dubai mall , Egypt , Cairo , Saudi Dubai mall "),
          const BuildPickupInfo(),
        ],
      ),
    );
  }
}
