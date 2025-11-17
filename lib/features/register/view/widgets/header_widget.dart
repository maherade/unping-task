import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
          'Create Account',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: UiColors.onBackground,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Join Unping and start your journey',
          style: TextStyle(
            fontSize: 16,
            color: UiColors.onBackground.withAlpha(90),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
