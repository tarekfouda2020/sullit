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
        if (state is! GenericUpdateState || state.data.isEmpty) {
          return const SizedBox.shrink();
        }
        return GestureDetector(
          onTap: () => controller.showClearCartDialog(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 5,
            children: [
              Text(
                tr('clearAll'),
                style: AppTextStyle.s15_w500(color: context.colors.primary),
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
