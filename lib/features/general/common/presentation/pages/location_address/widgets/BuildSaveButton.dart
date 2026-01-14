part of 'LocationWidgetsImports.dart';

class BuildSaveButton extends StatelessWidget {
  final LocationAddressData locationAddressData;

  const BuildSaveButton({super.key, required this.locationAddressData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .97,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () async => locationAddressData.moveCameraToLocation(
                    context, await locationAddressData.getCurrentLocation()),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: Dimens.borderRadius10PX,
                      color: context.colors.white),
                  child: SvgPicture.asset(Res.currentLocationIcon),
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap16,
        Container(
          width: MediaQuery.sizeOf(context).width * .97,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const LocationIconWidget(),
                  Gaps.hGap10,
                  Flexible(
                    child: LocationTitleWidget(
                      controller: locationAddressData,
                      txtStyle:
                          AppTextStyle.s18_w700(color: context.colors.black).copyWith(
                            height: 1.2
                          ),
                    ),
                  )
                ],
              ),
              Gaps.vGap12,
              InkWell(
                onTap: () => locationAddressData.changeLocation(context),
                child: Container(
                  height: 45,
                  margin: const EdgeInsetsDirectional.only(start: 16),
                  decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  child: Text(
                    "Deliver Here",
                    style: AppTextStyle.s18_w700(color: context.colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
