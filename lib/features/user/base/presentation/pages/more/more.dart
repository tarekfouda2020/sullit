part of 'more_imports.dart';

class More extends StatefulWidget {
  final HomeController homeController;

  const More({Key? key, required this.homeController}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> with WidgetsBindingObserver {
  late final MoreController controller;

  @override
  void initState() {
    super.initState();
    controller = MoreController(context, widget.homeController);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      controller.wasInBackground = true;
    } else if (state == AppLifecycleState.resumed &&
        controller.wasInBackground) {
      controller.wasInBackground = false;
      controller.refreshNotificationStatus();
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
          title: tr('more'), bgColor: context.colors.white, showBack: false),
      body: ListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 50),
          //   child: Image.asset(
          //     Res.logo,
          //     width: 190,
          //     height: 40,
          //   ),
          // ),
          Gaps.vGap16,
          ShortCutSectionWidget(controller: controller),
          ShopByWidget(controller: controller),
          SupportSectionWidget(controller: controller),
          OtherSectionWidget(controller: controller),
          Gaps.vGap128
          // BuildMoreHeader(moreController: controller),
        ],
      ),
    );
  }
}
