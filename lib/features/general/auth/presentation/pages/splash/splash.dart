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
    controller.initScreen(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage(Res.logo), context);
    precacheImage(const AssetImage(Res.ramadanSplashGif), context);
    precacheImage(const AssetImage(Res.ramadanSplashImage), context);
    precacheImage(const AssetImage(Res.logoIcon), context);
    precacheImage(const AssetImage(Res.logoPng), context);
    precacheImage(const AssetImage(Res.newSplashImage), context);
    precacheImage(const AssetImage(Res.dealOfDayBackGround), context);
  }

  @override
  void dispose() {
    super.dispose();
    PlaySoundHelper.instance.stopSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(
           Res.ramadanSplashImage
          ))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Res.ramadanSplashGif),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    height: 300,
                    Res.newSplashImage,
                  ),
                  Gaps.vGap20,
                  // Image.asset(
                  //   Res.logoPng,
                  //   width: MediaQuery.of(context).size.width * .3,
                  // ),
                  // Gaps.vGap12,
                  // Text(
                  //   'its worth it, thats it',
                  //   style: AppTextStyle.s16_w700(color: context.colors.black),
                  // ),
                ],
              ),
            ),
            Gaps.empty,
            Gaps.empty,
            Gaps.empty,
          ],
        ),
      ),
    );
  }
}
