part of 'widgets_imports.dart';

class PharmacyCartInfoWidget extends StatelessWidget {
  final PharmacyCartController controller;

  const PharmacyCartInfoWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      margin: const EdgeInsets.only(top: 1.2),
      color: context.colors.white,
      child: BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
        bloc: controller.pharmacyBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            var pharmacy = state.data!;

            return Row(
              children: [
                CachedImage(
                  url: pharmacy.logo ?? "",
                  width: 40,
                  height: 33,
                  borderRadius: Dimens.borderRadius8PX,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    pharmacy.name!,
                    style: AppTextStyle.s16_w600(
                      color: context.colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.onPressPlus(context),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: context.colors.lightPink2,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                    child: SvgPicture.asset(
                      Res.plusIcon,
                      width: 14,
                      height: 14,
                      colorFilter: ColorFilter.mode(
                        context.colors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }

          if (state is GenericFailedState) {
            return Gaps.empty;
          }

          return  BuildShimmerItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 35,
                  decoration: BoxDecoration(
                    color: context.colors.lightPink2,
                    borderRadius: Dimens.borderRadius10PX,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                    color: context.colors.lightPink2,
                    borderRadius: Dimens.borderRadius10PX,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 25,
                  height: 25,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: context.colors.lightPink2,
                    borderRadius: Dimens.borderRadius5PX,
                    shape: BoxShape.rectangle
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}