part of 'blogs_imports.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  late BlogsController controller;

  @override
  void initState() {
    controller = BlogsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('blogs')),
      body: GenericListView(
        padding: Dimens.paddingAll15PX,
        type: ListViewType.api,
        emptyStr: tr("noBlogs"),
        loadingWidget: const BuildLoadingView(),
        itemBuilder: (_, index, item) => BuildBlogItem(blog: item),
        cubit: controller.blogsBloc,
        onRefresh: controller.getBlogs,
      ),
    );
  }
}
