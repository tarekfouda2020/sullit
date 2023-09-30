part of 'classified_products_w_imports.dart';

class BuildRemainingUploads extends StatelessWidget {
  final int uploads;

  const BuildRemainingUploads({Key? key, required this.uploads})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.purpleDark,
            context.colors.purpleLight,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(
            Icons.upload_outlined,
            color: context.colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              uploads.toString(),
              style: AppTextStyle.s16_w700(color: context.colors.white),
            ),
          ),
          Text(
            tr('remainingUploads'),
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
