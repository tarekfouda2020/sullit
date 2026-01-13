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
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("location")),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Gaps.vGap(120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Image.asset(
                Res.mapIntroImage),
          ),
            Gaps.vGap32,
            Text("We need access to your location",
            textAlign: TextAlign.center,
            style: AppTextStyle.s22_w700(color: context.colors.black),
            ),
            Gaps.vGap12,
            Text("to show nearby sellers and provide you\nwith an exceptional experience.",
            style: AppTextStyle.s16_w400(color: context.colors.textColor).copyWith(
              height: 1.3
            ),
            ),
            Gaps.vGap32,
            DefaultButton(
              title: "Use My Current Location",
              onTap: () {},
              margin: const EdgeInsets.only(bottom: 16),
            ),
            DefaultButton(
              title: "Use My Current Location",
              textColor: context.colors.primary,
              borderColor: context.colors.primary,
              color: context.colors.white,
              onTap: () {},
              margin: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
