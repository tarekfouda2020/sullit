part of'my_wallet_widgets_imports.dart';
class BuildWalletHistory extends StatelessWidget {
 final MyWalletController controller;
  const BuildWalletHistory({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RefreshIndicator(
        onRefresh: () async => controller.getTransactions(1),
        child: PagedListView<int, WalletTransaction>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<WalletTransaction>(
            itemBuilder: (_, item, index) => WalletItemWidget(item: item,),
            firstPageProgressIndicatorBuilder: (_) => _transactionsLoading(),
            noItemsFoundIndicatorBuilder: (cxt) {
              return Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Center(
                  child: Text(
                    tr('noTransactionsFound'),
                    style: AppTextStyle.s20_w700(color: context.colors.black),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }


  Widget _transactionsLoading(){
    return Column(
      children: List.generate(5, (index) {
        return Container(
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          child: ListTile(
            title: Row(
              children: const [
                BuildShimmerItem(
                  height: 12,
                  width: 100,
                ),
              ],
            ),
            trailing: const BuildShimmerItem(
              height: 7,
              width: 50,
            ),
            minLeadingWidth: 10.w,
          ),
        );
      }),
    );
  }


}
