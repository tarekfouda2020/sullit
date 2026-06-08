part of 'category_details_widgets_imports.dart';

class BuildFilterItem extends StatefulWidget {
  final CategoryDetailsController categoryDetailsController;
  final Attributes attributesModel;
  final int index;

  const BuildFilterItem({
    super.key,
    required this.attributesModel,
    required this.index,
    required this.categoryDetailsController,
  });

  @override
  State<BuildFilterItem> createState() => _BuildFilterItemState();
}

class _BuildFilterItemState extends State<BuildFilterItem>
    with AutomaticKeepAliveClientMixin {
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    isOpened = widget.attributesModel.opened;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RepaintBoundary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() => isOpened = !isOpened);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.attributesModel.name,
                    style: AppTextStyle.s20_w500(color: context.colors.black),
                  ),
                  AnimatedRotation(
                    turns: isOpened ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                        isOpened
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        color: context.colors.black),
                  ),
                ],
              ),
            ),
          ),
          Gaps.line(context.colors.gray, 10),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: isOpened
                ? ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: widget.attributesModel.attributeValues
                        .map(
                          (attr) => BuildSpecificationItem(
                            position: widget.attributesModel.attributeValues
                                .indexOf(attr),
                            attributeIndex: widget.index,
                            categoryDetailsController:
                                widget.categoryDetailsController,
                            attributeValueModel: attr,
                          ),
                        )
                        .toList(),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
