import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class SuccessContainerWithIcon extends StatelessWidget {
  const SuccessContainerWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: UiColors.primary.withAlpha(30),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check_circle_outline,
        size: 80,
        color: UiColors.primary,
      ),
    );
  }
}
