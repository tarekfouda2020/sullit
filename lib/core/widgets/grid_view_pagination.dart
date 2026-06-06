import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/custom_refresh_indicator_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class GridViewPagination<ItemType> extends StatelessWidget {
  final PagingController<int, ItemType> pagingController;
  final Widget Function(BuildContext context, ItemType item, int index)
      itemBuilder;
  final Future<void> Function() onRefresh;
  final SliverGridDelegate? gridDelegate;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext context)?
      firstPageProgressIndicatorBuilder;
  final Widget Function(BuildContext context)? noItemsFoundIndicatorBuilder;
  final bool showNewPageProgressIndicatorAsGridChild;
  final bool showNewPageErrorIndicatorAsGridChild;

  const GridViewPagination({
    Key? key,
    required this.pagingController,
    required this.itemBuilder,
    required this.onRefresh,
    this.gridDelegate,
    this.padding,
    this.firstPageProgressIndicatorBuilder,
    this.noItemsFoundIndicatorBuilder,
    this.showNewPageProgressIndicatorAsGridChild = false,
    this.showNewPageErrorIndicatorAsGridChild = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: onRefresh,
      child: PagedGridView<int, ItemType>(
        padding: padding ?? Dimens.standardPadding,
        pagingController: pagingController,
        gridDelegate: gridDelegate ??
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 15.r,
              mainAxisSpacing: 15.r,
              crossAxisCount: 2,
              childAspectRatio: .71,
            ),
        showNewPageProgressIndicatorAsGridChild:
            showNewPageProgressIndicatorAsGridChild,
        showNewPageErrorIndicatorAsGridChild:
            showNewPageErrorIndicatorAsGridChild,
        builderDelegate: PagedChildBuilderDelegate<ItemType>(
          firstPageProgressIndicatorBuilder: firstPageProgressIndicatorBuilder,
          itemBuilder: itemBuilder,
          noItemsFoundIndicatorBuilder: noItemsFoundIndicatorBuilder ??
              (cxt) => const BuildEmptyDataView(),
        ),
      ),
    );
  }
}
