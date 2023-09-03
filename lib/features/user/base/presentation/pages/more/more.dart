part of 'more_imports.dart';

class More extends StatefulWidget {
  final HomeController homeController;

  const More({Key? key, required this.homeController}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final MoreController controller = MoreController();

  @override
  Widget build(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: BuildSearchAppBar(homeController: widget.homeController),
      body: ListView(
        padding: Dimens.paddingAll15PX,
        children: [
          // BuildMoreHeader(
          //   moreController: controller,
          // ),
          BuildMoreItem(
              title: 'DashBoard',
              icon: Icons.home_outlined,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const DashBoardRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              haveStatus: true,
              title: 'Purchased History',
              icon: Icons.file_copy_outlined,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const PurchasedHistoryRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              title: 'Return Orders',
              icon: Icons.file_copy_outlined,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const ReturnOrdersRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              title: 'Downloads',
              icon: Icons.download,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const DownloadsRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              title: 'Blogs',
              icon: Icons.list_alt,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const BlogsRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              title: 'WishList',
              icon: Icons.favorite_border,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const WishlistRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
            title: 'Compare',
            icon: Icons.compare_arrows,
            onTap: () {
                AutoRouter.of(context).push(const CompareRoute());
              }
          ),
          BuildMoreItem(
              title: 'Track Order',
              icon: Icons.summarize_outlined,
              onTap: () {
                if(auth){
                  AutoRouter.of(context)
                      .push(OrderSummaryRoute(isTrackOrder: true));
                }else {
                  CustomToast.showAuthDialog(context);
                }

              }),
          BuildMoreItem(
              title: 'Conversation',
              icon: Icons.chat,
              onTap: () {
                if(auth){
                  AutoRouter.of(context).push(const ConversationsRoute());
                }else{
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
              title: 'My Wallet',
              icon: Icons.monetization_on_outlined,
              onTap: () {
                if (auth) {
                  AutoRouter.of(context).push(const MyWalletRoute());
                } else {
                  CustomToast.showAuthDialog(context);
                }
              }),
          BuildMoreItem(
            title: 'Support Tickets',
            icon: Icons.airplane_ticket_outlined,
            onTap: () {
              if (auth) {
                AutoRouter.of(context).push(
                  const SupportTicketsRoute(),
                );
              } else {
                CustomToast.showAuthDialog(context);
              }
            },
          ),
          BuildMoreItem(
            title: 'Manage Profile',
            icon: Icons.person_2_outlined,
            onTap: () {
              if (auth) {
                AutoRouter.of(context).push(ProfileRoute());
              } else {
                CustomToast.showAuthDialog(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
