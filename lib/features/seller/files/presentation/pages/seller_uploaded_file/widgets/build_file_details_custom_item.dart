part of 'seller_uploaded_file_widgets_imports.dart';

class BuildFileDetailsCustomItem extends StatelessWidget {
  final String header, content;
  const BuildFileDetailsCustomItem(
      {Key? key, required this.header, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10).r,
          margin: const EdgeInsets.symmetric(vertical: 10).r,
          decoration: BoxDecoration(
              color: context.colors.greyWhite,
              borderRadius: BorderRadius.circular(5).r,
              border: Border.all(color: context.colors.disableGray)),
          child: Text(
            content,
            style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
          ),
        ),
      ],
    );
  }
}
