part of 'widgets_imports.dart';

class AiChatShopTileWidget extends StatelessWidget {
  final AiChatShopCard item;

  const AiChatShopTileWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      padding: const EdgeInsets.all(Dimens.dp10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(Dimens.dp12),
        border: Border.all(color: context.colors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedImage(
                url: item.logo ?? '',
                height: 36,
                width: 36,
                boxShape: BoxShape.circle,
              ),
              Gaps.hGap8,
              Expanded(
                child: Text(
                  item.name ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s12_w600(color: context.colors.black),
                ),
              ),
            ],
          ),
          Gaps.vGap8,
          Text(
            item.typeLabel ?? '',
            style: AppTextStyle.s11_w400(color: context.colors.gray),
          ),
          const Spacer(),
          Text(
            '${item.rating ?? '-'}',
            style: AppTextStyle.s12_w500(color: context.colors.blackTextColor),
          ),
        ],
      ),
    );
  }
}
