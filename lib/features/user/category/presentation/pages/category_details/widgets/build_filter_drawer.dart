part of 'category_details_widgets_imports.dart';

class BuildFilterDrawer extends StatefulWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildFilterDrawer({super.key, required this.categoryDetailsController});

  @override
  State<BuildFilterDrawer> createState() => _BuildFilterDrawerState();
}

class _BuildFilterDrawerState extends State<BuildFilterDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: context.colors.white,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp20),
        child: BlocBuilder<GenericBloc<SubCategory?>, GenericState<SubCategory?>>(
          bloc: widget.categoryDetailsController.specificationsCubit,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Platform.isIOS ? Gaps.vGap(kToolbarHeight) : Gaps.vGap32,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        tr('filter'),
                        style: AppTextStyle.s20_w700(color: context.colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: context.colors.black,
                      ),
                    ),
                  ],
                ),
                // Gaps.line(context.colors.gray, 10),
                Divider(endIndent: 5, color: context.colors.gray, height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.data!.attributes.length + 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return CustomPriceRangeWidget(
                          rangeCubit: widget.categoryDetailsController.rangeCubit,
                        );
                      } else if (index == 1) {
                        return BrandsFilterItem(controller: widget.categoryDetailsController);
                      } else {
                        final attrIndex = index - 2;
                        final attribute = state.data!.attributes[attrIndex];
                        return BuildFilterItem(
                          key: ValueKey(attribute.id),
                          categoryDetailsController: widget.categoryDetailsController,
                          attributesModel: attribute,
                          index: attrIndex,
                        );
                      }
                    },
                  ),
                ),
                Gaps.vGap12,
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: DefaultButton(
                        height: 35.h,
                        title: tr('confirm'),
                        margin: EdgeInsets.zero,
                        onTap: () => widget.categoryDetailsController.confirmFilter(context),
                        color: context.colors.primary,
                        borderRadius: Dimens.borderRadius30PX,
                        textColor: context.colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gaps.hGap5,
                    Expanded(
                      child: GestureDetector(
                        onTap: () => widget.categoryDetailsController.resetFilter(context),
                        child: Text(
                          tr(
                            'reset',
                          ),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.s18_w700(color: context.colors.primary),
                        ),
                      ),
                      // child: DefaultButton(
                      //   height: 35.h,
                      //   title: tr('reset'),
                      //   elevation: 0,
                      //   textColor: context.colors.primary,
                      //   fontSize: 18,
                      //   fontWeight: FontWeight.w700,
                      //   margin: EdgeInsets.zero,
                      //   onTap: () {
                      //     Navigator.of(context).pop();
                      //     // categoryDetailsController.pagingController.refresh();
                      //   },
                      //   color: Colors.transparent,
                      //   borderRadius: Dimens.borderRadius10PX,
                      // ),
                    ),
                  ],
                ),
                if (Platform.isIOS) Gaps.vGap(25) else Gaps.vGap(20)
              ],
            );
          },
        ),
      ),
    );
  }
}
