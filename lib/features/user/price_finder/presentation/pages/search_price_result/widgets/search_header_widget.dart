part of 'imports.dart';

class SearchHeaderWidget extends StatelessWidget {
  final SearchPriceController controller;

  const SearchHeaderWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: GenericTextField(
                controller: controller.searchFieldCtr,
                fillColor: context.colors.white,
                suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 24),
                  child: Transform.scale(
                    scale: 0.75,
                    child: SvgPicture.asset(Res.searchIcon),
                  ),
                ),
                onChange: (value) => controller.whileWriting(value),
                hint: tr("searchByProductNameOrBarcode"),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.search,
                onSubmit: () {
                  controller.onPressSearch(context);
                },
                validate: (value) {},
              ),
            ),
            Gaps.hGap12,
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(
                const SearchScannerPageRoute(),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 14,
                ),
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
              tr('searchResults'),
              style: AppTextStyle.s22_w700(
                color: context.colors.black,
              ),
            ),
            const Spacer(),
            BlocBuilder<GenericBloc<List<ProductCard>>, GenericState<List<ProductCard>>>(
              bloc: controller.productsBloc,
              builder: (context, state) {
                final itemsCount = state.data.length;

                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: context.colors.lightGreen3,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: context.colors.darkGreen,
                    ),
                  ),
                  child: Text(
                    '$itemsCount ${tr("items")}',
                    style: AppTextStyle.s10_w700(
                      color: context.colors.darkGreen,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        Gaps.vGap12,
        BlocBuilder<GenericBloc<String>, GenericState<String>>(
          bloc: controller.searchKeyBloc,
          builder: (context, state) {
            if (state.data.isEmpty) {
              return const SizedBox.shrink();
            }

            return RichText(
              text: TextSpan(
                style: AppTextStyle.s14_w400(
                  color: context.colors.textColor,
                ),
                children: [
                  TextSpan(
                    text: '${tr('showingExactMatchesFor')} ',
                  ),
                  TextSpan(
                    text: state.data,
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
