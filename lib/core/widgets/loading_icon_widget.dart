
import 'package:flutter/material.dart';

class LoadingIconWidget extends StatelessWidget {
  final double? size;
  const LoadingIconWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: size ?? 18, height: size ?? 18,
      child: const CircularProgressIndicator.adaptive(
        strokeWidth: 2,
      ),
    );
  }
}
