part of 'LocationWidgetsImports.dart';


class SuggestionsPlacesSheet extends StatelessWidget {
  final LocationAddressData controller;

  const SuggestionsPlacesSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: const EdgeInsets.all(15),
        // margin: const EdgeInsets.only(top: kToolbarHeight+10),
        decoration: BoxDecoration(
          color: context.colors.white,
          // borderRadius: Dimens.sheetBorderRadius
        ),
        child: Column(
          children: [
            Gaps.vGap(kToolbarHeight-25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: context.colors.black,
                    )),
                Text(
                  "Places",
                  style: AppTextStyle.s18_w700(color: context.colors.black),
                ),
                Gaps.empty,
              ],
            ),
            Gaps.vGap15,
            SuggestionsSearchFieldWidget(controller: controller),
            Gaps.vGap20,
            BlocBuilder<GenericBloc<List<LocationIQPlace>>,GenericState<List<LocationIQPlace>>>(
              bloc: controller.placesCubit,
                builder: (context, state) {
                  if(state is GenericUpdateState){
                    return PlacesListWidget(data: state.data,controller: controller);
                  }else{
                    return  const PlacesShimmerWidget();
                  }
                },
            ),
          ],
        ),
      ),
    );
  }





}
