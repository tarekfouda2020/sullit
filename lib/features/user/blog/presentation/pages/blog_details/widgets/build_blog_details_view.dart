part of 'bolg_details_widgets_imports.dart';

class BuildBlogDetailsView extends StatelessWidget {
  final Blog blog;

  const BuildBlogDetailsView({super.key, required this.blog});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: Dimens.standardPadding,
        children: [
          BuildBlogDetailsInfo(blog: blog),
          BuildBlogDetailsComments(
            blog: blog,
          )
        ],
      ),
    );
  }
}
