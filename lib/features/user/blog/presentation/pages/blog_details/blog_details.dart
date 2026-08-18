part of 'blog_details_imports.dart';

class BlogDetails extends StatefulWidget {
  final Blog blog;

  const BlogDetails({Key? key, required this.blog}) : super(key: key);

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("blogDetails")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: widget.blog.banner,
            height: 250.spMin,
            width: MediaQuery.of(context).size.width,
            imgMargin: Dimens.paddingVertical10PX,
          ),
          BuildBlogDetailsView(blog: widget.blog),
        ],
      ),
    );
  }
}
