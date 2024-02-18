import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CircleButtonSize {
  small(45),
  medium(60),
  large(100);

  final double sizeDouble;
  const CircleButtonSize(this.sizeDouble);
}

class CircleButton extends ConsumerWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final CircleButtonSize size;

  const CircleButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      this.size = CircleButtonSize.medium})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(seconds: 0),
          minimumSize: Size(size.sizeDouble, size.sizeDouble),
          shape: const CircleBorder(),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: size.sizeDouble * 0.5,
            )
          ],
        ));
  }
}
