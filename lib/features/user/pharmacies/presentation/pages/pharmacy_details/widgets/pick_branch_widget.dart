part of 'widgets_imports.dart';

class PickBranchWidget extends StatelessWidget {

  final PharmacyDetailsController controller;

  const PickBranchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showBranchesSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 14),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius30PX,
            border: Border.all(color: context.colors.gray3)
        ),
        child: Row(
          children: [
            Expanded(
              child: BlocBuilder<GenericBloc<BranchDomainModel?>, GenericState<BranchDomainModel?>>(
                bloc: controller.selectedBranchCubit,
                builder: (context, state) {
                  return Text(
                    state.data?.name ?? "Select your branch",
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: AppTextStyle.s15_w400(color: context.colors.black),
                  );
                },
              ),
            ),
            Gaps.hGap10,
            Icon(Icons.keyboard_arrow_down,
            color: context.colors.black,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
