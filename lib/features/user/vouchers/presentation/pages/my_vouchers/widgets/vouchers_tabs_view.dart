part of 'widgets_imports.dart';

class VouchersTabsView extends StatelessWidget {
  final MyVouchersController controller;

  const VouchersTabsView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: context.colors.white,
      child: TabBar(
        controller: controller.tabController,
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.black,
        unselectedLabelStyle:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: context.colors.white,
          border: Border(
            bottom: BorderSide(width: 2, color: context.colors.primary),
          ),
        ),
        labelPadding: const EdgeInsetsDirectional.fromSTEB(15, 12, 10, 10),
        dividerColor: Colors.transparent,
        indicatorColor: context.colors.primary,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Text(
            textAlign: TextAlign.start,
            tr("valid"),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("used"),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("expired"),
          ),
        ],
      ),
    );
  }
}
