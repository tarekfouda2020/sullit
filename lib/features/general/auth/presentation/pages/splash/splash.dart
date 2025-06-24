part of 'splash_imports.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.manipulateSaveData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);
    precacheImage(const AssetImage(Res.dealOfDay), context);
    precacheImage(const AssetImage(Res.giftCardBarcodePlaceholder), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Res.logoIcon,
                ),
                Image.asset(
                  Res.logoPng,
                  width: MediaQuery.of(context).size.width * .3,
                ),
                Gaps.vGap12,
                Text(
                  'its worth it, thats it',
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
