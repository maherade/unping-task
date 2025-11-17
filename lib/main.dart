import 'package:flutter/material.dart';
import 'package:unping_ui/features/register/view/register_screen.dart';
import 'package:unping_ui/unping_ui.dart';

void main() {
  runApp(const RegistrationApp());
}

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unping Registration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: UiColors.primary,
          brightness: Brightness.light,
        ),
      ),
      home: const RegistrationScreen(),
    );
  }
}
