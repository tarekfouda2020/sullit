part of 'intro_location_imports.dart';


class IntroLocation extends StatefulWidget {
  const IntroLocation({super.key});

  @override
  State<IntroLocation> createState() => _IntroLocationState();
}

class _IntroLocationState extends State<IntroLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: tr("location")),
      body:  SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Image.asset(
                Res.mapIntroImage),
          ),
            Gaps.vGap32,
            // Text("We need access to your location",
            // style: AppTextStyle.s22_w700(color: con),
            // )
          ],
        ),
      ),
    );
  }
}
