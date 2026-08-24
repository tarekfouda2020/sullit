part of '../instore_cart_page_imports.dart';


class ClearAllButtonWidget extends StatelessWidget {
  final InstoreCartPageController controller;
  const ClearAllButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<InstoreCartItemModel>>,
        GenericState<List<InstoreCartItemModel>>>(
      bloc: controller.cartItemsBloc,
      builder: (context, state) {
        if (state is! GenericUpdateState) {
          return Gaps.empty;
        }

        if (state.data.isEmpty) {
          return Center(
            child: GestureDetector(
              onTap: ()=> controller.scanProduct(context),
              child: Text(
                tr('addMoreItems'),
                style: AppTextStyle.s15_w500(
                  color: context.colors.primary,
                ),
              ),
            ),
          );
        }

        return GestureDetector(
          onTap: () => controller.showClearCartDialog(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 5,
            children: [
              Gaps.hGap18,
              Text("Cart Products",style: AppTextStyle.s16_w700(color: context.colors.black),),
              const Spacer(),
              Text(
                tr('clearAll'),
                style: AppTextStyle.s15_w500(
                  color: context.colors.primary,
                ),
              ),
              SvgPicture.asset(
                Res.trashIcon,
                width: 15,
                height: 15,
                colorFilter: ColorFilter.mode(
                  context.colors.redAccent,
                  BlendMode.srcIn,
                ),
              ),
              Gaps.hGap18,
            ],
          ),
        );
      },
    );
  }
}
