part of 'home_widgets_imports.dart';

class CountryNotAvailableView extends StatelessWidget {
  const CountryNotAvailableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    color: context.colors.lightPink,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.location_off_outlined,
                    size: 44,
                    color: context.colors.redAccent,
                  ),
                ),
                Text(
                  tr("notAvailableInYourCountry"),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
