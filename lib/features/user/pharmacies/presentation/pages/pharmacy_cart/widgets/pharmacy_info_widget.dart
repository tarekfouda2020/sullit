part of 'widgets_imports.dart';

class PharmacyCartInfoWidget extends StatelessWidget {
  final PharmacyCartController controller;
  const PharmacyCartInfoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<CartDomainModel>,
        GenericState<CartDomainModel>>(
      bloc: controller.cartItemsBloc,
      builder: (context, state) {
        final cartData = state.data;
        if (cartData.items == null || cartData.items!.isEmpty) {
          return const SizedBox.shrink();
        }
        final firstItem = cartData.items!.first;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          margin: const EdgeInsets.only(top: 1.2),
          decoration: BoxDecoration(
            color: context.colors.white,
          ),
          child: Row(
            spacing: 8,
            children: [
              CachedImage(
                url: controller.pharmacy?.sliders?.first ?? "" ,
                width: 40,
                height: 33,
                borderRadius: Dimens.borderRadius8PX,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Text(
                  firstItem.soldBy,
                  style: AppTextStyle.s16_w600(color: context.colors.black),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: context.colors.lightPink2,
                      borderRadius: Dimens.borderRadius10PX),
                  child: SvgPicture.asset(
                    Res.plusIcon,
                    colorFilter: ColorFilter.mode(
                        context.colors.primary, BlendMode.srcIn),
                    width: 14,
                    height: 14,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
