

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';

class InvoiceSummaryCard extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? margin;
  const InvoiceSummaryCard({super.key, required this.children, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      margin: margin,
      decoration: CustomDecoration(myBoxShadow: const [], boxBorder: Border.all(color: context.colors.borderColor)),
      child: Column(
        children: children,
      ),
    );
  }
}
