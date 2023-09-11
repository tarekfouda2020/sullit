import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class BuildCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onBack ;
  const BuildCustomAppBar({Key? key,  this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.2,
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: onBack ?? () => Navigator.of(context).pop(),
      ),
      title: Image.asset(Res.suliitLogo, height: 30, width: 150),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight+10);
}
