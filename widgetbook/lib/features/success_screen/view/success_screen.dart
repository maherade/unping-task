import 'package:flutter/material.dart';
import 'package:unping_ui/features/success_screen/view/widgets/info_box.dart';
import 'package:unping_ui/features/success_screen/view/widgets/success_container_with_icon.dart';
import 'package:unping_ui/features/success_screen/view/widgets/success_message.dart';
import 'package:unping_ui/features/success_screen/view/widgets/success_title.dart';
import 'package:unping_ui/features/success_screen/view/widgets/user_card_info.dart';
import 'package:unping_ui/unping_ui.dart';

class SuccessScreen extends StatelessWidget {
  final String name;
  final String email;

  const SuccessScreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.background,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(48.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Success Icon
                SuccessContainerWithIcon(),
                const SizedBox(height: 32),
                /// Success Title
                SuccessTitle(),
                const SizedBox(height: 16),
                /// Success Message
                SuccessMessage(),
                const SizedBox(height: 32),
                /// User Info Card
                UserCardInfo(name: name, email: email),
                const SizedBox(height: 32),
                /// Info Box
                InfoBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
