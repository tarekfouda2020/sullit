part of 'following_w_imports.dart';

class BuildFollowingItem extends StatelessWidget {
  final Shop shopModel;
  final FollowingController controller;

  const BuildFollowingItem(
      {super.key, required this.shopModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const CustomDecoration(),
      padding: Dimens.paddingAll13PX,
      margin: Dimens.paddingVertical5PX,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedImage(
                url: shopModel.logo ?? "",
                width: Dimens.dp55,
                height: Dimens.dp55,
                boxShape: BoxShape.circle,
                haveRadius: false,
                borderColor: context.colors.greyWhite,
                fit: BoxFit.fill,
              ),
              Gaps.hGap10,
              Expanded(
                child: Text(
                  shopModel.name ?? tr('inHouseProduct'),
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: DefaultButton(
                  margin: EdgeInsets.zero,
                  title:
                      shopModel.follow == true ? tr("unfollow") : tr("follow"),
                  onTap: () => controller.onChangeFollowing(context, shopModel),
                  color: shopModel.follow == true
                      ? context.colors.black
                      : context.colors.primary,
                  height: 35.h,
                  borderRadius: Dimens.borderRadius5PX,
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Text(
            shopModel.description ?? tr('inHouseProduct'),
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
