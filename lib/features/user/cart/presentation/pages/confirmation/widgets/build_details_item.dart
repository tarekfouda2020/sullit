part of 'confirmation_w_imports.dart';

class BuildDetailsItem extends StatelessWidget {
  final String name;

  final String value;

  const BuildDetailsItem({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              name,
              style: AppTextStyle.s16_w500(
                color: context.colors.black,
              ),
            ),
            Text(
              value,
              style: AppTextStyle.s16_w500(
                color: context.colors.black,
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
