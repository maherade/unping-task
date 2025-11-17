import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

class SuccessTitle extends StatelessWidget {
  const SuccessTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to Unping!',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: UiColors.onBackground,
      ),
      textAlign: TextAlign.center,
    );
  }
}
