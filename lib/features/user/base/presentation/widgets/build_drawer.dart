import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';

import 'build_drawer_header.dart';
import 'build_drawer_item.dart';
import 'build_logout.dart';

class BuildDrawer extends StatelessWidget {
  final HomeController controller;

  const BuildDrawer({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;

    return Container(
      color: context.colors.customBackground,
      width: MediaQuery.sizeOf(context).width * .8,
      child: Column(
        children: [
          const BuildDrawerHeader(),
          Flexible(
            child: ListView(
              padding: Dimens.paddingHorizontal15PX,
              children: [
                BuildDrawerItem(
                  title: tr('home'),
                  icon: Icons.home_outlined,
                  onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
                ),
                BuildDrawerItem(
                  title: tr("allBrands"),
                  icon: Icons.branding_watermark_outlined,
                  onTap: () => AutoRouter.of(context).push(const BrandsRoute()),
                ),
                BuildDrawerItem(
                  title: tr("allCategories"),
                  icon: Icons.category_outlined,
                  onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
                ),
                // BuildDrawerItem(
                //   title: tr("allCategories"),
                //   icon: Icons.monetization_on_outlined,
                //   onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
                // ),
                Visibility(
                  visible: auth,
                  child: BuildDrawerItem(
                    title: tr("support"),
                    icon: Icons.support_agent_outlined,
                    onTap: () =>
                        AutoRouter.of(context).push(const SupportRoute()),
                  ),
                ),
                BuildDrawerItem(
                  title: tr("contactUs"),
                  icon: Icons.contact_support_outlined,
                  onTap: () =>
                      AutoRouter.of(context).push(const ContactUsRoute()),
                ),
                BuildDrawerItem(
                  title: tr('termsAndConditions'),
                  icon: Icons.list_alt,
                  onTap: () => AutoRouter.of(context).push(const TermsRoute()),
                ),
                BuildDrawerItem(
                  title: tr("privacyPolicy"),
                  icon: Icons.privacy_tip_outlined,
                  onTap: () =>
                      AutoRouter.of(context).push(const PrivacyRoute()),
                ),
                // BuildDrawerItem(
                //   title: tr("langauge"),
                //   icon: Icons.language,
                //   onTap: () {
                //     // controller.showLangBottomSheet(context, controller);
                //   }
                // ),
                BuildDrawerItem(
                  title: tr('supportPolicy'),
                  icon: Icons.support_agent,
                  onTap: () =>
                      AutoRouter.of(context).push(const SupportPolicyRoute()),
                ),
                BuildDrawerItem(
                  title: tr('returnPolicy'),
                  icon: Icons.keyboard_return,
                  onTap: () =>
                      AutoRouter.of(context).push(const ReturnPolicyRoute()),
                )
              ],
            ),
          ),
          BuildLogOut(controller: controller)
        ],
      ),
    );
  }
}
