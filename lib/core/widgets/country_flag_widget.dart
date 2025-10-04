import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CountryFlagWidget extends StatelessWidget {
  final String? flagPath;
  final double width;
  final double height;
  final String? package;

  const CountryFlagWidget({
    super.key,
    required this.flagPath,
    this.width = 25,
    this.height = 25,
    this.package,
  });

  @override
  Widget build(BuildContext context) {
    if (flagPath == null || flagPath!.isEmpty) {
      return _buildErrorWidget(context);
    }

    return Image.asset(
      flagPath!,
      width: width,
      height: height,
      package: package,
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget(context);
      },
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return child;
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: child,
        );
      },
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: context.colors.grey.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      child: Icon(
        Icons.flag,
        size: width * 0.6,
        color: context.colors.grey,
      ),
    );
  }
}




