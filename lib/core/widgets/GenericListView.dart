import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import 'GridFixedHeightDelegate.dart';

enum ListViewType { normal, api, separated, grid, gridApi }

typedef GenericBuilder = Widget Function(
    BuildContext context, int index, dynamic item);

class GenericListView<T> extends StatelessWidget {
  final ListViewType type;
  final dynamic onRefresh;
  final GenericBloc<List<T>>? cubit;
  final List<dynamic>? params;
  final GenericBuilder? itemBuilder;
  final List<Widget> children;
  final Color? dividerColor;
  final String? emptyStr;
  final Widget? emptyWidget;
  final Color? refreshBg;
  final Color? loadingColor;
  final Widget? loadingWidget;
  final EdgeInsets padding;
  final double spacing;
  final double runSpacing;
  final double gridItemHeight;
  final int gridCrossCount;

  const GenericListView({
    super.key,
    this.onRefresh,
    this.type = ListViewType.normal,
    this.cubit,
    this.itemBuilder,
    this.params,
    this.children = const [],
    this.dividerColor,
    this.emptyStr,
    this.refreshBg,
    this.padding = EdgeInsets.zero,
    this.loadingColor,
    this.loadingWidget,
    this.spacing = 10,
    this.runSpacing = 10,
    this.gridItemHeight = 100,
    this.gridCrossCount = 2,
    this.emptyWidget,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ListViewType.normal:
        return _NormalListView(padding: padding, children: children);
      case ListViewType.grid:
        return _GridView(
          padding: padding,
          gridItemHeight: gridItemHeight,
          gridCrossCount: gridCrossCount,
          spacing: spacing,
          runSpacing: runSpacing,
          children: children,
        );
      case ListViewType.separated:
        return _SeparatedListView(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          emptyWidget: emptyWidget,
          dividerColor: dividerColor,
          emptyStr: emptyStr,
          refreshBg: refreshBg,
          padding: padding,
          loadingWidget: loadingWidget,
        );
      case ListViewType.api:
        return _ApiListView(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          emptyStr: emptyStr,
          emptyWidget: emptyWidget,
          refreshBg: refreshBg,
          padding: padding,
          loadingWidget: loadingWidget,
        );
      case ListViewType.gridApi:
        return _GridViewApi(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          emptyStr: emptyStr,
          emptyWidget: emptyWidget,
          refreshBg: refreshBg,
          padding: padding,
          spacing: spacing,
          loadingWidget: loadingWidget,
          runSpacing: runSpacing,
          gridCrossCount: gridCrossCount,
          gridItemHeight: gridItemHeight,
          loadingColor: loadingColor,
        );
    }
  }
}

class _NormalListView extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;

  const _NormalListView({required this.children, required this.padding});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView(
        padding: padding,
        children: children,
      ),
    );
  }
}

class _SeparatedListView<T> extends StatefulWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final GenericBloc<List<T>> cubit;
  final GenericBuilder itemBuilder;
  final Color? dividerColor;
  final String? emptyStr;
  final Widget? emptyWidget;
  final Color? refreshBg;
  final Color? loadingColor;
  final Widget? loadingWidget;
  final EdgeInsets padding;

  const _SeparatedListView(
      {required this.onRefresh,
      this.params,
      required this.cubit,
      required this.itemBuilder,
      this.dividerColor,
      this.emptyStr,
      this.refreshBg,
      required this.padding,
      this.loadingColor,
      this.loadingWidget,
      this.emptyWidget});

  @override
  _SeparatedListViewState createState() => _SeparatedListViewState<T>();
}

class _SeparatedListViewState<T> extends State<_SeparatedListView> {
  @override
  void initState() {
    Function.apply(widget.onRefresh, widget.params, {#refresh: false});
    Function.apply(widget.onRefresh, widget.params);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<T>>, GenericState<List<T>>>(
      bloc: widget.cubit as GenericBloc<List<T>>,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          if (state.data.isNotEmpty) {
            return LiquidPullToRefresh(
              onRefresh: () => Function.apply(widget.onRefresh, widget.params),
              backgroundColor: Colors.white,
              color: widget.refreshBg ?? context.colors.primary.withOpacity(.5),
              showChildOpacityTransition: false,
              springAnimationDurationInMilliseconds: 500,
              child: CupertinoScrollbar(
                child: ListView.separated(
                  itemCount: state.data.length,
                  padding: widget.padding,
                  itemBuilder: (context, index) {
                    T item = state.data[index];
                    return widget.itemBuilder(context, index, item);
                  },
                  separatorBuilder: (_, index) {
                    return Divider(
                      color: widget.dividerColor ?? Colors.grey[100],
                    );
                  },
                ),
              ),
            );
          }
          return widget.emptyWidget ??
              _genericListViewEmptyList(widget.emptyStr);
        }
        return _genericListViewLoadingView(widget.loadingColor);
      },
    );
  }
}

class _ApiListView<T> extends StatefulWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final GenericBloc<List<T>> cubit;
  final GenericBuilder itemBuilder;
  final String? emptyStr;
  final Widget? emptyWidget;
  final Color? refreshBg;
  final Color? loadingColor;
  final Widget? loadingWidget;
  final EdgeInsets padding;

  const _ApiListView(
      {required this.onRefresh,
      this.params,
      required this.cubit,
      required this.itemBuilder,
      this.emptyStr,
      this.refreshBg,
      required this.padding,
      this.loadingColor,
      this.loadingWidget,
      this.emptyWidget});

  @override
  _ApiListViewState createState() => _ApiListViewState<T>();
}

class _ApiListViewState<T> extends State<_ApiListView> {
  @override
  void initState() {
    Function.apply(widget.onRefresh, widget.params, {#refresh: false});
    Function.apply(widget.onRefresh, widget.params);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<T>>, GenericState<List<T>>>(
      bloc: widget.cubit as GenericBloc<List<T>>,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          if (state.data.isNotEmpty) {
            return LiquidPullToRefresh(
              onRefresh: () => Function.apply(widget.onRefresh, widget.params),
              backgroundColor: Colors.white,
              color: widget.refreshBg ?? context.colors.primary.withOpacity(.5),
              showChildOpacityTransition: false,
              springAnimationDurationInMilliseconds: 500,
              child: CupertinoScrollbar(
                child: ListView.builder(
                  itemCount: state.data.length,
                  padding: widget.padding,
                  itemBuilder: (context, index) {
                    T item = state.data[index];
                    return widget.itemBuilder(context, index, item);
                  },
                ),
              ),
            );
          }
          return widget.emptyWidget ??
              _genericListViewEmptyList(widget.emptyStr);
        }
        return widget.loadingWidget ??
            _genericListViewLoadingView(widget.loadingColor);
      },
    );
  }
}

class _GridViewApi<T> extends StatefulWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final GenericBloc<List<T>> cubit;
  final GenericBuilder itemBuilder;
  final String? emptyStr;
  final Widget? emptyWidget;
  final Color? refreshBg;
  final Color? loadingColor;
  final Widget? loadingWidget;
  final EdgeInsets padding;
  final double spacing;
  final double runSpacing;
  final double gridItemHeight;
  final int gridCrossCount;

  const _GridViewApi(
      {required this.onRefresh,
      this.params,
      required this.cubit,
      required this.itemBuilder,
      this.emptyStr,
      this.refreshBg,
      required this.spacing,
      required this.runSpacing,
      required this.padding,
      required this.gridCrossCount,
      required this.gridItemHeight,
      this.loadingColor,
      this.loadingWidget,
      this.emptyWidget});

  @override
  _GridViewApiState createState() => _GridViewApiState<T>();
}

class _GridViewApiState<T> extends State<_GridViewApi> {
  @override
  void initState() {
    Function.apply(widget.onRefresh, widget.params, {#refresh: false});
    Function.apply(widget.onRefresh, widget.params);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<T>>, GenericState<List<T>>>(
      bloc: widget.cubit as GenericBloc<List<T>>,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          if (state.data.isNotEmpty) {
            return LiquidPullToRefresh(
              onRefresh: () => Function.apply(widget.onRefresh, widget.params),
              backgroundColor: Colors.white,
              color: widget.refreshBg ?? context.colors.primary.withOpacity(.5),
              showChildOpacityTransition: false,
              springAnimationDurationInMilliseconds: 500,
              child: CupertinoScrollbar(
                child: GridView.builder(
                  itemCount: state.data.length,
                  padding: widget.padding,
                  gridDelegate: GridFixedHeightDelegate(
                    crossAxisCount: widget.gridCrossCount,
                    mainAxisSpacing: widget.runSpacing,
                    crossAxisSpacing: widget.spacing,
                    height: widget.gridItemHeight,
                  ),
                  itemBuilder: (_, index) {
                    T item = state.data[index];
                    return widget.itemBuilder(context, index, item);
                  },
                ),
              ),
            );
          }
          return widget.emptyWidget ??
              _genericListViewEmptyList(widget.emptyStr);
        }
        return widget.loadingWidget ??
            _genericListViewLoadingView(widget.loadingColor);
      },
    );
  }
}

class _GridView extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double gridItemHeight;
  final int gridCrossCount;
  final double spacing;
  final double runSpacing;

  const _GridView(
      {required this.children,
      required this.padding,
      required this.spacing,
      required this.runSpacing,
      required this.gridItemHeight,
      required this.gridCrossCount});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: GridView(
        padding: padding,
        gridDelegate: GridFixedHeightDelegate(
            crossAxisCount: gridCrossCount,
            mainAxisSpacing: runSpacing,
            crossAxisSpacing: spacing,
            height: gridItemHeight),
        children: children,
      ),
    );
  }
}

Widget _genericListViewEmptyList(String? emptyStr) {
  return Center(
    child: Text(
      emptyStr ?? tr('noDate'),
      style: const AppTextStyle.s16_w700(color: Colors.black),
    ),
  );
}

Widget _genericListViewLoadingView(Color? loadingColor) {
  return getIt.get<LoadingHelper>().showLoadingView(color: loadingColor);
}
