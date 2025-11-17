import 'package:flutter/material.dart';
import 'package:unping_ui/features/register/controller/regiter_cubit/register_cubit.dart';
import 'package:unping_ui/unping_ui.dart';

class CountryDropDownWidget extends StatelessWidget {
  final RegisterCubit cubit;

  const CountryDropDownWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BaseDropdown<String>(
        placeholder: 'Select your country',
        onChanged: (value) {
          cubit.selectedCountry = value;
        },
        selectedValue: cubit.selectedCountry,
        options: cubit.countries
            .map((e) => DropdownOption(value: e, label: e))
            .toList());
  }
}
