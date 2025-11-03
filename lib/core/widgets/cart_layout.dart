import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/res.dart';

class CartLayout extends StatelessWidget {
  final Widget child;
  final bool showWhatsApp;

  const CartLayout({
    super.key,
    required this.child,
    required this.showWhatsApp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          child,
          if (showWhatsApp) const _DraggableWhatsAppButton(),
        ],
      ),
    );
  }
}

class _DraggableWhatsAppButton extends StatefulWidget {
  const _DraggableWhatsAppButton();

  @override
  State<_DraggableWhatsAppButton> createState() => _DraggableWhatsAppButtonState();
}

class _DraggableWhatsAppButtonState extends State<_DraggableWhatsAppButton> {
  late Offset position;

  @override
  void initState() {
    super.initState();
    // Initialize position in initState to access MediaQuery
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.of(context).size;
      const buttonSize = 42.0;
      const edgePadding = 16.0;
      setState(() {
        position = Offset(
          screenSize.width - buttonSize - edgePadding, // Right edge
          screenSize.height - 140, // Position from bottom
        );
      });
    });
    position = const Offset(300, 500); // Temporary initial position
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const buttonSize = 42.0; // Button size
    const edgePadding = 16.0; // Padding from screen edge

    return PositionedDirectional(
      start: position.dx,
      top: position.dy,
      child: GestureDetector(
        // onPanUpdate: (details) {
        //   setState(() {
        //     // Update position during drag (allow anywhere for smooth dragging)
        //     double newX = position.dx + details.delta.dx;
        //     double newY = position.dy + details.delta.dy;
        //
        //     // Keep Y within screen bounds during drag
        //     newY = newY.clamp(50, screenSize.height - buttonSize - 100);
        //
        //     position = Offset(newX, newY);
        //   });
        // },
        // onPanEnd: (details) {
        //   setState(() {
        //     // Snap to nearest edge when drag ends
        //     double centerX = screenSize.width / 2;
        //     double snapX;
        //
        //     if (position.dx < centerX) {
        //       // Snap to left edge
        //       snapX = edgePadding;
        //     } else {
        //       // Snap to right edge
        //       snapX = screenSize.width - buttonSize - edgePadding;
        //     }
        //
        //     // Keep Y within bounds
        //     double snapY = position.dy.clamp(50, screenSize.height - buttonSize - 100);
        //
        //     position = Offset(snapX, snapY);
        //   });
        // },
        child: _buildWhatsAppButton(context),
      ),
    );
  }

  Widget _buildWhatsAppButton(BuildContext context) {
    return BlocBuilder<CountCubit, CountState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => AutoRouter.of(context).push(const CartRoute()),
          child: Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: context.colors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: context.colors.white, width: 1.5)
            ),
            child: Visibility(
              // visible: state.data.items!=null && (state.data.items??<CartItem>[]).isNotEmpty,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(Res.shopCart),
                  if(state.cartCount>0)
                    PositionedDirectional(
                      top:-7 ,
                      end: -8,
                      child: Container(
                          width: 19,
                          height: 19,
                          padding: const EdgeInsets.only(bottom: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: context.colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: context.colors.primary,
                                  width: 1.5
                              )
                          ),
                          child: Text("${state.cartCount }",
                            style: AppTextStyle.s11_w500(color: context.colors.primary),
                          )
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
