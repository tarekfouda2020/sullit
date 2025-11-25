import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/http/dio_helper/utils/http_tracking_interceptor.dart';

class AliceFloatingButton extends StatefulWidget {
  const AliceFloatingButton({Key? key}) : super(key: key);

  @override
  State<AliceFloatingButton> createState() => _AliceFloatingButtonState();
}

class _AliceFloatingButtonState extends State<AliceFloatingButton> {
  double x = 30;
  double y = 0;
  double buttonSize = 35.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (y == 0) {
      y = MediaQuery.sizeOf(context).height / 2;
    }
  }

  void _updatePosition(double deltaX, double deltaY) {
    final size = MediaQuery.sizeOf(context);
    setState(() {
      x = (x + deltaX).clamp(0.0, size.width - buttonSize - 40);
      y = (y + deltaY).clamp(0.0, size.height - buttonSize - 40);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      top: y,
      start: x,
      child: GestureDetector(
        onPanUpdate: (details) {
          _updatePosition(details.delta.dx, details.delta.dy);
        },
        onTap: () => HttpTrackingInterceptor.instance.showAlice(),
        child: Container(
          height: buttonSize,
          width: buttonSize,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.network_check,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}

