import 'package:flutter/material.dart';

import '../../../../../../../core/constants/gaps.dart';
import '../my_vouchers_imports.dart';
import '../widgets/widgets_imports.dart';

class VouchersListView extends StatefulWidget {
  final VouchersType type;

  const VouchersListView({super.key, required this.type});

  @override
  State<VouchersListView> createState() => _VouchersListViewState();
}

class _VouchersListViewState extends State<VouchersListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const VoucherItemView();
      },
      separatorBuilder: (BuildContext context, int index) => Gaps.vGap12,
    );
  }
}
