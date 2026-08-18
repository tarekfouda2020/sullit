part of 'widgets_imports.dart';

class PharmacyPageBackGroundWidget extends StatelessWidget {
  const PharmacyPageBackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
              color: context.colors.white,
              border: Border(
                  bottom: BorderSide(color: context.colors.gray3, width: 1.5))),
        ),
        Expanded(
          child: Container(
            color: context.colors.customBackground,
          ),
        ),
      ],
    );
  }
}
