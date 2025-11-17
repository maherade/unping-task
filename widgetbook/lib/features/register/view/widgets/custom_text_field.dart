import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';

Widget customTextField({
  required TextEditingController controller,
  required String label,
  required String hint,
  required IconData icon,
  bool obscureText = false,
  TextInputType? keyboardType,
  String? Function(String?)? validator,
}) {
  return StatefulBuilder(
    builder: (context, setState) {
      // تخزين القيمة في state الحقيقية
      return _PasswordFieldBody(
        controller: controller,
        label: label,
        hint: hint,
        icon: icon,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
      );
    },
  );
}

class _PasswordFieldBody extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const _PasswordFieldBody({
    required this.controller,
    required this.label,
    required this.hint,
    required this.icon,
    required this.obscureText,
    this.keyboardType,
    this.validator,
  });

  @override
  State<_PasswordFieldBody> createState() => _PasswordFieldBodyState();
}

class _PasswordFieldBodyState extends State<_PasswordFieldBody> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: UiColors.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          obscureText: isObscured,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          style: TextStyle(color: UiColors.onBackground),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: UiColors.onBackground.withAlpha(90),
            ),
            prefixIcon: Icon(widget.icon, color: UiColors.primary),
            suffixIcon: widget.obscureText
                ? IconButton(
              icon: Icon(
                isObscured ? Icons.visibility_off : Icons.visibility,
                color: UiColors.onBackground.withAlpha(150),
              ),
              onPressed: () {
                setState(() {
                  isObscured = !isObscured;
                });
              },
            )
                : null,

            filled: true,
            fillColor: UiColors.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: UiColors.outline),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: UiColors.outline),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: UiColors.primary, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
      ],
    );
  }
}