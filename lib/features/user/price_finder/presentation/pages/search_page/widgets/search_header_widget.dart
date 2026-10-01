part of 'imports.dart';

class SearchHeaderWidget extends StatelessWidget {
  const SearchHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: GenericTextField(
                fillColor: context.colors.white,
                suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 24,
                  ),
                  child: Transform.scale(
                    scale: 0.75,
                    child: SvgPicture.asset(
                      Res.searchIcon,
                    ),
                  ),
                ),
                hint: "Search by product name or barcode",
                maxLength: 2,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.search,
                validate: (value) {},
              ),
            ),
            Gaps.hGap12,
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(
                const SearchScannerPageRoute(),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                decoration: BoxDecoration(
                  color: context.colors.lightGreen3,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  Res.qrScanIcon,
                  colorFilter: ColorFilter.mode(
                    context.colors.darkGreen2,
                    BlendMode.srcIn,
                  ),
                  height: 22,
                  width: 27,
                ),
              ),
            ),
          ],
        ),
        Gaps.vGap24,
        Row(
          children: [
            Text(
              'Search Results',
              style: AppTextStyle.s22_w700(color: context.colors.black),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: context.colors.lightGreen3,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: context.colors.darkGreen),
              ),
              child: Text(
                '10 Items',
                style: AppTextStyle.s10_w700(color: context.colors.darkGreen),
              ),
            ),
          ],
        ),
        Gaps.vGap12,
        Text(
          'Showing exact matches for Coca-Cola Original',
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
      ],
    );
  }
}
