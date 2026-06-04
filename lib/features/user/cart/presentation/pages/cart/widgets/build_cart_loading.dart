part of 'cart_widgets_imports.dart';

class BuildCartLoading extends StatelessWidget {
  const BuildCartLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildCartStepperShimmer(),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
            itemCount: 5,
            itemBuilder: (_, index) => const CartShimmerItemWidget(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
          ),
          padding: const EdgeInsets.all(Dimens.dp15),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildShimmerItem(
                height: 10,
                width: 100,
              ),
              Row(
                children: [
                  BuildShimmerItem(height: 10, width: 100),
                  BuildShimmerItem(
                    height: 10,
                    width: 100,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
