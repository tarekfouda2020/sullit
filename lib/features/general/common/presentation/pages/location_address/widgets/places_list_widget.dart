part of 'LocationWidgetsImports.dart';



class PlacesListWidget extends StatelessWidget {
  final List<LocationIQPlace> data;
  final LocationAddressData controller;
  const PlacesListWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data.isNotEmpty,
      replacement: Column(
        children: [
          Text("No places available",
            style: AppTextStyle.s15_w500(color: context.colors.black),
          )
        ],
      ),
      child: Flexible(
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            children: List.generate(
              data.length,
                  (index) {
                LocationIQPlace item = data[index];
                return Visibility(
                  visible: item.address!=null && item.address?.name?.isNotEmpty == true,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => controller.onSelectPlace(context,item),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: context.colors.background,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: context.colors.gray3
                        )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor:
                            context.colors.primary.withOpacity(.1),
                            child: Icon(
                              Icons.location_on,
                              color: context.colors.primary,
                              size: 20,
                            ),
                          ),
                          Gaps.hGap12,
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.address?.name ?? "",
                                  style: AppTextStyle.s16_w500(
                                    color: context.colors.black,
                                  ).copyWith(
                                    height: 1.3
                                  ),
                                ),
                                Gaps.vGap4,
                                Text(
                                  '${text(item.address?.city)}${text(item.address?.state)}${text(item.address?.country).replaceAll(",", "")} ',
                                  style: AppTextStyle.s13_w400(
                                    color: context.colors.grey,
                                  ).copyWith(
                                      height: 1.3
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: context.colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  String text(String? text){
    return text!=null && text.isNotEmpty == true
        ?"$text, "
        :"";
  }


}
