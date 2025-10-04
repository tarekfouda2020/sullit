import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/res.dart';

class BuildHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController? homeController;

  const BuildHomeAppBar({Key? key, this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.2,
      backgroundColor: context.colors.white,
      toolbarHeight: 70,
      leading: const Text(''),
      // leading: IconButton(
      //   onPressed: () => homeController?.scaffoldKey.currentState!.openDrawer(),
      //   icon: Icon(
      //     Icons.menu,
      //     color: context.colors.black,
      //     size: 25,
      //   ),
      // ),
      title: Image.asset(Res.newAuthLogo, height: 52, width: 152),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight );
}
