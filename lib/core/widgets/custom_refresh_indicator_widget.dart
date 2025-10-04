import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CustomRefreshIndicatorWidget extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget child;
  const CustomRefreshIndicatorWidget({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      backgroundColor: context.colors.white,
      child: child,
    );
  }
}
