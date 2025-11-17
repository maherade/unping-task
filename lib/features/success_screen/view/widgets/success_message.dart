
import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class SuccessMessage extends StatelessWidget {
  const SuccessMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your account has been created successfully.',
      style: TextStyle(
        fontSize: 16,
        color: UiColors.onBackground.withAlpha(120),
      ),
      textAlign: TextAlign.center,
    );
  }
}
