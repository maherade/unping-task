
import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class UserCardInfo extends StatelessWidget {
  final String name;
  final String email;
  const UserCardInfo({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: UiColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: UiColors.outline),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: UiColors.primary,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                'Name:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: UiColors.onBackground.withAlpha(120),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: UiColors.onBackground,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(
                Icons.email,
                color: UiColors.primary,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                'Email:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: UiColors.onBackground.withAlpha(120),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  email,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: UiColors.onBackground,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
