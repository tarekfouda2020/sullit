part of 'tickets_details_widgets_imports.dart';

class BuildReplayItem extends StatelessWidget {
  final TicketReply replyModel;

  const BuildReplayItem({Key? key, required this.replyModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius5PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: .5,
          )
        ],
      ),
      child: ListTile(
        title: Container(
          margin: Dimens.marginTop10,
          child: Text(
            replyModel.user.name!,
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
        ),
        subtitle: Html(
          data: replyModel.reply,
          style: {
            "body": Style(
              color: Colors.black,
              margin: Margins.zero,
              fontSize: FontSize(
                12,
              ),
              fontWeight: FontWeight.w400,
            ),
          },
        ),
        leading: CachedImage(
          height: 40.r,
          width: 40.r,
          fit: BoxFit.cover,
          haveRadius: false,
          boxShape: BoxShape.circle,
          placeHolder: Image.asset(
            Res.profile,
          ),
          url: replyModel.user.avatarOriginal!,
        ),
        trailing: Text(
          DateFormat.yMd().add_jm().format(replyModel.createdAt),
          style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
        ),
        minLeadingWidth: 10.w,
      ),
    );
  }
}
