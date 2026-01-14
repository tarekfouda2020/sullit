part of 'LocationWidgetsImports.dart';

class MapSearchFieldWidget extends StatelessWidget {
  final LocationAddressData controller;

  const MapSearchFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          GestureDetector(
            onTap:() => controller.onPop(context),
            child: Container(
              width: 44, height: 44,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: Dimens.borderRadius12PX,
              ),
              child: SvgPicture.asset(Res.arrowBackIcon),
            ),
          ),
          Gaps.hGap12,
          Expanded(
            child: GenericTextField(
              controller: controller.searchFieldController,
              margin: const EdgeInsets.symmetric(vertical: 16),
              fillColor: context.colors.white,
              fieldTypes: FieldTypes.clickable,
              type: TextInputType.text,
              action: TextInputAction.search,
              onTab: () => controller.showPlacesSheet(context),
              validate: (value) => value?.noValidate(),
              hint: "Search...",
              hintColor: context.colors.black,

              prefixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                    onTap: () => controller.showPlacesSheet(context),
                    child:  SvgPicture.asset(Res.searchIcon,
                    colorFilter: ColorFilter.mode(context.colors.black, BlendMode.srcIn),
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}