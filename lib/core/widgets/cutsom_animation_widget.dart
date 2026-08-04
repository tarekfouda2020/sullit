import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

/// ✅ Ultra-optimized version
class AppearAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final double offsetY;
  final double offsetX;
  final double scale;

  const AppearAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.delay = Duration.zero,
    this.offsetY = 0.04,
    this.offsetX = 0,
    this.scale = 0.96,
  });

  @override
  State<AppearAnimation> createState() => _AppearAnimationState();
}

class _AppearAnimationState extends State<AppearAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // ✅ Single animation value (0 to 1)
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    // ✅ Schedule animation with delay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        if (widget.delay != Duration.zero) {
          Future.delayed(widget.delay, () {
            if (mounted) _controller.forward();
          });
        } else {
          _controller.forward();
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        // ✅ Use single animation value for all transforms
        final progress = _animation.value;

        return Opacity(
          opacity: progress,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              // Scale
              ..setEntry(0, 0, 0.96 + (progress * 0.04))
              ..setEntry(1, 1, 0.96 + (progress * 0.04))
              // Translate (using progress instead of Offset)
              ..setEntry(3, 1, (1 - progress) * widget.offsetY * 100),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}

/// ✅ Alternative: Minimal version (fastest)
class AppearAnimationMinimal extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;

  const AppearAnimationMinimal({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.delay = Duration.zero,
  });

  @override
  State<AppearAnimationMinimal> createState() => _AppearAnimationMinimalState();
}

class _AppearAnimationMinimalState extends State<AppearAnimationMinimal>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        if (widget.delay != Duration.zero) {
          Future.delayed(widget.delay, _startAnimation);
        } else {
          _startAnimation();
        }
      }
    });
  }

  void _startAnimation() {
    if (mounted) _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.96, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOut),
      ),
      child: FadeTransition(
        opacity: Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOut),
        ),
        child: widget.child,
      ),
    );
  }
}

// class AppearAnimation extends StatefulWidget {
//   final Widget child;
//   final Duration duration;
//   final Duration delay;
//   final double offsetY;
//   final double offsetX;
//   final double scale;

//   const AppearAnimation({
//     super.key,
//     required this.child,
//     this.duration = const Duration(milliseconds: 300),
//     this.delay = Duration.zero,
//     this.offsetY = 0.04,
//     this.offsetX = 0,
//     this.scale = 0.96,
//   });

//   @override
//   State<AppearAnimation> createState() => _AppearAnimationState();
// }

// class _AppearAnimationState extends State<AppearAnimation>
//     with SingleTickerProviderStateMixin {

//   late final AnimationController _controller;
//   late final Animation<double> _fade;
//   late final Animation<Offset> _slide;
//   late final Animation<double> _scale;

//   bool _played = false;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: widget.duration,
//     );

//     _fade = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeOut,
//     );

//     _slide = Tween<Offset>(
//       begin: Offset(widget.offsetX, widget.offsetY),
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeOutCubic,
//       ),
//     );

//     _scale = Tween<double>(
//       begin: widget.scale,
//       end: 1,
//     ).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeOutBack,
//       ),
//     );

//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       if (!_played && mounted) {
//         _played = true;
//         if (widget.delay != Duration.zero) {
//           await Future.delayed(widget.delay);
//         }
//         _controller.forward();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: _fade,
//       child: SlideTransition(
//         position: _slide,
//         child: ScaleTransition(
//           scale: _scale,
//           child: widget.child,
//         ),
//       ),
//     );
//   }
// }
