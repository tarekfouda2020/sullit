part of 'home_main_widgets_imports.dart';

class AiAndPriceFinderCardWidget extends StatelessWidget {
  const AiAndPriceFinderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (context.isAuth) {
                  AutoRouter.of(context).push(
                    const AiChatPageRoute(),
                  );
                } else {
                  CustomToast.showAuthDialog(context);
                }
              },
              child: AiAndPriceFinderItemCardWidget(
                bgColor: context.colors.lightPink,
                title: tr("askSahlaAI"),
                arrowColor: context.colors.primary,
                bgIconColor: context.colors.opacityPink,
                image: Res.aiIcon,
                subTitle: tr("yourPersonalShoppingAssistant"),
                iconPadding: 7,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => AutoRouter.of(context).push(
                const PriceFinderPageRoute(),
              ),
              child: AiAndPriceFinderItemCardWidget(
                bgColor: context.colors.lightGreen3,
                title: "Sahla Price Finder",
                bgIconColor: context.colors.opacityGreen,
                image: Res.priceFinderIcon,
                subTitle: "Compare Prices From nearby sellers",
                iconPadding: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
