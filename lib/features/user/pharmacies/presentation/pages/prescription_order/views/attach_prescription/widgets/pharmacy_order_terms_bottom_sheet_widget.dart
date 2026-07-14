part of 'widgets_imports.dart';

class PharmacyOrderTermsBottomSheetWidget extends StatelessWidget {
  final GenericBloc<PharmacyOrderTermsModel?> termsCubit;

  const PharmacyOrderTermsBottomSheetWidget({super.key, required this.termsCubit});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
        minHeight: MediaQuery.sizeOf(context).height * 0.3,
      ),
      padding: Dimens.paddingAll20PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: BlocBuilder<GenericBloc<PharmacyOrderTermsModel?>,
          GenericState<PharmacyOrderTermsModel?>>(
        bloc: termsCubit,
        builder: (context, state) {
           PharmacyOrderTermsModel? terms = state.data;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BottomSheetHeaderWidget(title: terms?.title ?? ""),
              Gaps.vGap15,
              Flexible(
                child: SingleChildScrollView(
                  child: Text(
                    terms?.content ?? "",
                    style: AppTextStyle.s16_w600(color: context.colors.black)
                        .copyWith(height: 1.4),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
