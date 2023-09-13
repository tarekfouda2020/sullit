part of 'my_wallet_widgets_imports.dart';

class BuildWalletLoading extends StatelessWidget {
  const BuildWalletLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingAll15PX,
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          padding: Dimens.paddingAll20PX,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                  child: Icon(
                Icons.monetization_on_outlined,
                color: context.colors.white,
                size: 30.sp,
              )),
              Gaps.vGap20,
              const BuildShimmerItem(
                height: 10,
                width: 60,
              ),
              Gaps.vGap10,
              const BuildShimmerItem(
                height: 10,
                width: 100,
              )
            ],
          ),
        ),
        Gaps.vGap24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildShimmerItem(
              height: 12,
              width: 150,
            ),
            Gaps.vGap10,
            ...List.generate(
              4,
              (index) => Container(
                margin: Dimens.paddingVertical5PX,
                decoration: CustomDecoration(),
                child: ListTile(
                  title: Row(
                    children: const [
                      BuildShimmerItem(
                        height: 12,
                        width: 100,
                      ),
                    ],
                  ),
                  trailing: const BuildShimmerItem(
                    height: 7,
                    width: 50,
                  ),
                  minLeadingWidth: 10.w,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
