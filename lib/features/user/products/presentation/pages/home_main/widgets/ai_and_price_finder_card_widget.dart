part of 'home_main_widgets_imports.dart';

class AiAndPriceFinderCardWidget extends StatelessWidget {
  const AiAndPriceFinderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: AiAndPriceFinderItemCardWidget(
            bgColor: context.colors.lightPink,
            title: "Ask Sahla AI",
            arrowColor: context.colors.primary,
            bgIconColor: context.colors.opacityPink,
            image: Res.aiIcon,
            subTitle: "Your Personal Shopping\nAssistant",
            iconPadding: 7,
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
    );
  }
}
