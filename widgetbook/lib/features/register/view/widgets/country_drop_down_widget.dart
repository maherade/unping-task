import 'package:flutter/material.dart';
import 'package:unping_ui/unping_ui.dart';
import 'package:widgetbook_workspace/features/register/controller/regiter_cubit/register_cubit.dart';

class CountryDropDownWidget extends StatelessWidget {
  final RegisterCubit cubit;
  const CountryDropDownWidget({super.key,required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Country',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: UiColors.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        Dropdowns.select<String>(
          options: cubit.countries,
          placeholder: 'Select your country',
          onChanged: (value) {
            cubit.selectedCountry = value;
          },
        ),
      ],
    );
  }
}
