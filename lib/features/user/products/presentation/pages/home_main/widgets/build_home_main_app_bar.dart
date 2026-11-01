part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeMainController homeMainController;

  const BuildHomeMainAppBar({Key? key, required this.homeMainController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: homeMainController.homeController.visibleSearch,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 10, top: 10),
          color: context.colors.customBackground,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr('goodEvening'),
                        style: AppTextStyle.s12_w400(
                          color: context.colors.textColor,
                        ),
                      ),
                      Gaps.vGap8,
                      if (context.isAuth)
                        SizedBox(
                          width: 102,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  context.read<UserCubit>().state.model?.name ?? tr("login"),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.s14_w800(
                                    color: context.colors.black,
                                  ).copyWith(height: 1.3),
                                ),
                              ),
                              Gaps.hGap5,
                              SvgPicture.asset(Res.loginNameIcon),
                            ],
                          ),
                        )
                      else
                        GestureDetector(
                          onTap: () => homeMainController.goLogin(context),
                          child: Text(
                            tr('login'),
                            style: AppTextStyle.s14_w800(
                              color: context.colors.black,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Image.asset(
                    Res.newAuthLogo,
                    height: 54,
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: () => homeMainController.goNotification(context),
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Res.notificationBg,
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 15,
                                top: 10,
                              ),
                              child: SvgPicture.asset(
                                Res.notification,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Container(
              //   padding: const EdgeInsetsDirectional.symmetric(
              //     horizontal: 20,
              //     vertical: 6,
              //   ),
              //   decoration: BoxDecoration(
              //     color: context.colors.white,
              //     border: Border(
              //       top: BorderSide(
              //         color: context.colors.borderColor,
              //         width: 0.5,
              //       ),
              //     ),
              //   ),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.location_on_outlined,
              //         size: 15,
              //         color: context.colors.darkGreen,
              //       ),
              //       Gaps.hGap4,
              //       Text(
              //         'Deliver to:',
              //         style: AppTextStyle.s12_w600(
              //           color: context.colors.black,
              //         ),
              //       ),
              //       Gaps.hGap10,
              //       Text(
              //         'Al sohel tower , 401',
              //         maxLines: 1,
              //         overflow: TextOverflow.ellipsis,
              //         style: AppTextStyle.s12_w400(
              //           color: context.colors.textColor,
              //         ),
              //       ),
              //       Gaps.hGap6,
              //       Icon(
              //         Icons.keyboard_arrow_down_rounded,
              //         size: 20,
              //         color: context.colors.textColor,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
