part of 'share_holder_view_widgets_imports.dart';

class ShareHolderAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final ProfileController controller;
  const ShareHolderAppBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20,left: 20,top: 28,bottom: 6),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
          Color(0xffFAC950),
          Color(0xff654D11),
        ])
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back_outlined, size: 20.sp,color: context.colors.black,)
            ),
          ),
          ShareHolderImageWidget(controller: controller),
          Gaps.hGap10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap10,
                _buildText(context),
               Gaps.vGap8,
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
                 decoration: BoxDecoration(
                   color: context.colors.white.withAlpha(80),
                   borderRadius: Dimens.borderRadius20PX
                 ),
                 child:  Text(tr("shareholders"),
                 style: const AppTextStyle.s12_w500(color: Color(0xff7A4702)),
                 ),
               )
              ],
            ),
          ),
          Gaps.hGap8,
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SvgPicture.asset(Res.crownVipMark),
          )
        ],
      ),
    );
  }

  Text _buildText(BuildContext context) {
    var name = context.select<UserCubit, String>((value) => value.state.model?.name ?? "");
    return Text(
      "${tr("welcome")} $name",
      maxLines: 2,
      style: AppTextStyle.s14_w700(color: context.colors.black).copyWith(
        overflow: TextOverflow.ellipsis
      ),
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(65);

}
