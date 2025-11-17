import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';
import 'package:widgetbook_workspace/features/register/controller/regiter_cubit/register_cubit.dart';

class TermsCheckboxWidget extends StatelessWidget {
  final RegisterCubit registerCubit;
  const TermsCheckboxWidget({super.key, required this.registerCubit});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: registerCubit.agreeToTerms,
          onChanged: (value) {
            registerCubit. changeCheckboxValue(value!);
          },
          activeColor: UiColors.primary,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'I agree to the Terms of Service and Privacy Policy',
              style: TextStyle(
                fontSize: 14,
                color: UiColors.onBackground.withAlpha(80),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
