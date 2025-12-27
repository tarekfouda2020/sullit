part of 'more_widgets_imports.dart';

class SupportSectionWidget extends StatelessWidget {
  final MoreController controller;
  const SupportSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
      crossAxisCount: 2,
      title: tr("support"),
      children: [
        BuildMoreItem(
          image: Res.ticketLogo,
          title: "chat with us",
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.support),
        ),
        BuildMoreItem(
          image: Res.ticketLogo,
          title: "orders tickets",
          onTap: () =>
              controller.checkAuth(context, MoreRoutes.supportTickets),
        ),
      ],
    );
  }
}
