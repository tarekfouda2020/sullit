part of 'imports.dart';

class ResumeComparisonButtonWidget extends StatelessWidget {
  final SearchPriceController controller;

  const ResumeComparisonButtonWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomSafeAreaWidget(
      child: BlocBuilder<GenericBloc<int?>, GenericState<int?>>(
        bloc: controller.savedComparisonIdBloc,
        builder: (context, state) {
          if (state.data == null) {
            return Gaps.empty;
          }
          return DefaultButton(
            title: tr('resumePriceComparison'),
            height: 40,
            margin:const EdgeInsets.only(bottom: 20,left: 16,right: 16),
            borderRadius: Dimens.borderRadius20PX,
            onTap: () => controller.resumeActiveComparison(context),
          );
        },
      ),
    );
  }
}
