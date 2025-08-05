part of 'seller_products_widgets_imports.dart';

class SellerBrandsWidget extends StatelessWidget {
  final SellerProductsController controller;

  const SellerBrandsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.showBrandsCubit,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () => controller.showBrandsSheet(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<GenericBloc<BrandDomainModel?>, GenericState<BrandDomainModel?>>(
                    bloc: controller.selectedBrandCubit,
                    builder: (context, state) {
                      return Text(
                        state.data?.name ?? tr("brand"),
                        style: AppTextStyle.s14_w600(color: context.colors.black),
                      );
                    },
                  ),
                  Icon(state.data ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                    color: context.colors.black,
                    size: 20.sp,
                  )
                ],
              ),
            ),
            Gaps.line(context.colors.gray, 15),
          ],
        );
      },
    );
  }
}
