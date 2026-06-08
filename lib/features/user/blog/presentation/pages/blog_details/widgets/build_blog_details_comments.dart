part of 'bolg_details_widgets_imports.dart';

class BuildBlogDetailsComments extends StatelessWidget {
  final Blog blog;

  const BuildBlogDetailsComments({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "0 comments",
          style: AppTextStyle.s14_w800(color: context.colors.black),
        ),
        const Spacer(),
        Text(
          "Sort by",
          style: AppTextStyle.s14_w800(color: context.colors.black),
        ),
        PopupMenuButton(
          itemBuilder: (BuildContext bc) => [
            PopupMenuItem(
              value: 1,
              height: 30,
              child: Text(
                "Newest",
                style: AppTextStyle.s9_w400(color: context.colors.black),
              ),
            ),
            const PopupMenuItem(
              value: 2,
              height: 30,
              child: Text(
                "Oldest",
                style: AppTextStyle.s9_w400(color: Colors.red),
              ),
            ),
          ],
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(5).r,
            decoration: BoxDecoration(
              color: context.colors.greyWhite,
            ),
            child: Text(
              "Oldest",
              style: AppTextStyle.s14_w800(
                color: context.colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
