part of 'share_holder_view_widgets_imports.dart';

class ShareHolderAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final ProfileController controller;

  const ShareHolderAppBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.arrow_back_outlined, size: 20.sp,color: context.colors.black,)
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
                 child: const Text("SHAREHOLDERS",
                 style: AppTextStyle.s12_w500(color: Color(0xff7A4702)),
                 ),
               )
              ],
            ),
          ),
          Gaps.hGap8,
          SvgPicture.asset(Res.crownVipMark)
        ],
      ),
    );
  }

  Text _buildText(BuildContext context) {
    var name = context.select<UserCubit, String>((value) => value.state.model?.name ?? "");
    return Text(
      "Welcome $name",
      maxLines: 2,
      style: AppTextStyle.s14_w700(color: context.colors.black).copyWith(
        overflow: TextOverflow.ellipsis
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
