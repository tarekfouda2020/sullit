part of 'my_gift_cards_widgets_imports.dart';

class MyGiftCardsListWidget extends StatelessWidget {
  final MyGiftCardsController controller;
  const MyGiftCardsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => controller.getMyGiftCards(1),
      child: PagedListView<int, GiftCardDomainModel>(
        pagingController: controller.pagingController,
        padding: Dimens.paddingHorizontal20PX,
        builderDelegate: PagedChildBuilderDelegate<GiftCardDomainModel>(
          itemBuilder: (_, item, index) {
            return GiftCardItemWidget(isMyGiftCard: true,model: item);
          },
          noItemsFoundIndicatorBuilder: (cxt) {
            return  Center(
              child: Text(
                "You're not subscribed to any gift cards. Check out our latest offers!",
                style: AppTextStyle.s16_w700(color: context.colors.black).copyWith(
                  height: 1.5
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
          firstPageProgressIndicatorBuilder: (_) => Column(
            children: List.generate(5, (index) {
              return const GiftCardShimmerWidget(isMyGiftCard: true);
            }),
          ),
        ),
      ),
    );
  }
}
