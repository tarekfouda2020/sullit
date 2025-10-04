part of 'gift_cards_widgets_imports.dart';

class GiftCardsListWidget extends StatelessWidget {
  final GiftCardsController controller;
  const GiftCardsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: () => controller.getGiftCards(1),
      child: PagedListView<int, GiftCardDomainModel>(
        pagingController: controller.pagingController,
        builderDelegate: PagedChildBuilderDelegate<GiftCardDomainModel>(
          itemBuilder: (_, item, index) {
            return GiftCardItemWidget(
                isMyGiftCard: false,
                model: item,
              onTap: ()=> controller.routeToCardDetails(context, item.id),
            );
          },
          noItemsFoundIndicatorBuilder: (cxt) {
            return  Center(
              child: Text(
                tr("noGiftCards"),
                style: AppTextStyle.s16_w700(color: context.colors.black),
              ),
            );
          },
          firstPageProgressIndicatorBuilder: (_) => Column(
            children: List.generate(5, (index) {
              return const GiftCardShimmerWidget(isMyGiftCard: false);
            }),
          ),
        ),
      ),
    );
  }
}
