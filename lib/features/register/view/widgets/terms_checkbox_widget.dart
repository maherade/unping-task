import 'package:flutter/material.dart';
import 'package:unping_ui/features/register/controller/regiter_cubit/register_cubit.dart';
import 'package:unping_ui/unping_ui.dart';

class TermsCheckboxWidget extends StatelessWidget {
  final RegisterCubit registerCubit;
  const TermsCheckboxWidget({super.key, required this.registerCubit});

  @override
  Widget build(BuildContext context) {
    return  BaseCheckbox(
      label: 'I agree to the terms and conditions',
      labelStyle: TextStyle(
        fontSize: 14,
        color: UiColors.onBackground.withAlpha(80),
      ),
      state: registerCubit.agreeToTerms ? CheckboxState.checked : CheckboxState.unchecked,
      onChanged: (value) {
        registerCubit.changeCheckboxValue(value);
      },
    );
  }
}
