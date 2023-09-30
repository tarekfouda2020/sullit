part of 'more_widgets_imports.dart';

class BuildMoreHeader extends StatelessWidget {
  final MoreController moreController;

  const BuildMoreHeader({Key? key, required this.moreController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model ;
    return Column(
      children: [

        Container(
          margin: Dimens.paddingVertical15PX,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius10PX,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
                bloc: moreController.imageCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return Container(
                      height: 100.r,
                      width: 100.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(File(state.data!.path)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }
                  return InkWell(
                      onTap: () {},
                      child: Container(
                        width: 80.r,
                        height: 80.r,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.disableGray),
                        child: CachedImage(
                          fit: BoxFit.cover,
                          haveRadius: false,
                          boxShape: BoxShape.circle,
                          placeHolder: Image.asset(
                            Res.profile,
                            height: 120.r,
                            width: 120.r,
                          ),
                          url: user?.avatarOriginal??"",
                        ),
                      ));
                },
              ),
              Positioned(
                top: 4,
                right: 0,
                child: InkWell(
                  onTap: () => moreController.getImage(context),
                  child: Container(
                    padding: const EdgeInsets.all(3).r,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.white,
                        border: Border.all(
                          color: context.colors.disableGray,
                        )),
                    child: Icon(
                      Icons.camera_alt,
                      size: 12.sp,
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          user?.name??"",
          style: AppTextStyle.s16_w400(color: context.colors.black),
        ),
        DefaultButton(
          title: tr('beASeller'),
          borderRadius: BorderRadius.circular(5).r,
          width: 80.w,
          height: 20.h,
          fontSize: 10,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
          onTap: () => AutoRouter.of(context).push(const SellerDashboardRoute()),
        ),
        Gaps.vGap24,
      ],
    );
  }
}
