import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Transform.rotate(
        angle: 1.570796,
        child: LoadingAnimationWidget.halfTriangleDot(
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
