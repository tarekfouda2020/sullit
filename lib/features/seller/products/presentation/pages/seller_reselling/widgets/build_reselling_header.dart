part of 'seller_reselling_widgets_imports.dart';

class BuildResellingHeader extends StatelessWidget {
  const BuildResellingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "To Be Reselling",
          style: AppTextStyle.s16_w400(color: context.colors.black),
        ),
        Gaps.vGap15,
        Text(
          "Fiend eligible products in suliits catalog",
          style: AppTextStyle.s18_w700(color: context.colors.black),
        ),
        Gaps.vGap20,
        Row(
          children: [
            Expanded(
              child: GenericTextField(
                radius: BorderRadius.circular(7).r,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 16).r,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.search,
                validate: (value) => value?.noValidate(),
                hint: "Search...",
                hintColor: context.colors.disableGray,
                // margin: const EdgeInsets.only(top: 20,right: 20,left: 20).r,
              ),
            ),
            Gaps.hGap10,
            PopupMenuButton(
              color: context.colors.white,
              elevation: 20,
              enabled: true,
              onSelected: (int value) {},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text(
                    "All Products",
                    style: AppTextStyle.s12_w400(color: context.colors.black),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Added Products",
                    style: AppTextStyle.s12_w400(color: context.colors.black),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "UnAdded Products",
                    style: AppTextStyle.s12_w400(color: context.colors.black),
                  ),
                ),
              ],
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5).r,
                padding: const EdgeInsets.all(5).r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.darkPurple,
                ),
                child: const Icon(Icons.filter_alt_outlined, size: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
