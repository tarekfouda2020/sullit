part of 'classified_products_w_imports.dart';

class BuildRemainingUploads extends StatelessWidget {
  const BuildRemainingUploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            context.colors.purpleDark,
            context.colors.purpleLight
          ]),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Icon(
            Icons.upload_outlined,
            color: context.colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '0',
              style: AppTextStyle.s16_w700(color: context.colors.white),
            ),
          ),
          Text(
            'Remaining Uploads',
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
