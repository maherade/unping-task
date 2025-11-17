import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeaderWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: UiColors.onBackground,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
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
