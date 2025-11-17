import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: UiColors.primary.withAlpha(40),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: UiColors.primary.withAlpha(30),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            color: UiColors.primary,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'We\'ve sent a verification email to your address. Please check your inbox.',
              style: TextStyle(
                fontSize: 14,
                color: UiColors.onBackground.withAlpha(120),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
