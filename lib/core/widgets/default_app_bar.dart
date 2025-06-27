import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? titleWidget;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final double? elevation;
  final bool? showBack;
  final bool? centerTitle;

  const DefaultAppBar({
    Key? key,
    required this.title,
    this.titleWidget,
    this.actions = const [],
    this.leading,
    this.size,
    this.showBack = true,
    this.centerTitle,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:titleWidget?? Text(
        title,
        // style: AppTextStyle.s16_w800(color: context.colors.black),
        style: AppTextStyle.s20_w700(color: context.colors.black),
      ),
      centerTitle: centerTitle ?? true,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: context.colors.customBackground,
      // elevation:elevation ?? 0.2,
      elevation:0,
      leadingWidth: showBack == true ? 55 : 10,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: IconButton(
              icon: Icon(Icons.arrow_back_outlined, size: 15.sp),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
