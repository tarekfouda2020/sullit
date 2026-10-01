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
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
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
                        'Good Evening',
                        style: AppTextStyle.s12_w400(
                          color: context.colors.textColor,
                        ),
                      ),
                      Gaps.vGap8,
                      if (context.isAuth == true)
                        Row(
                          children: [
                            Text(
                              'Mahmoud',
                              style: AppTextStyle.s14_w800(
                                color: context.colors.black,
                              ),
                            ),
                            Gaps.hGap5,
                            SvgPicture.asset(Res.loginNameIcon),
                          ],
                        )
                      else
                        Text(
                          'Login',
                          style: AppTextStyle.s14_w800(
                            color: context.colors.black,
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
                    child: Container(
                      height: 85,
                      width: 85,
                      padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Res.notificationBg),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        Res.notification,
                        height: 20,
                        width: 20,
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
