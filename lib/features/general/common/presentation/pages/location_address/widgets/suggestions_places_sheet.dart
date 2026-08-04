part of 'LocationWidgetsImports.dart';

class SuggestionsPlacesSheet extends StatelessWidget {
  final LocationAddressData controller;

  const SuggestionsPlacesSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.sizeOf(context).height * 0.46),
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(top: kToolbarHeight + 10),
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.sheetBorderRadius),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetHeaderWidget(title: tr("places")),
              Gaps.vGap15,
              SuggestionsSearchFieldWidget(controller: controller),
              Gaps.vGap20,
              BlocBuilder<GenericBloc<List<LocationIQPlace>>,
                  GenericState<List<LocationIQPlace>>>(
                bloc: controller.placesCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return PlacesListWidget(
                        data: state.data, controller: controller);
                  } else {
                    return const PlacesShimmerWidget();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
