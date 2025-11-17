import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unping_ui/unping_ui.dart';
import 'package:widgetbook_workspace/components/inputs/input.showcase.widgetbook.dart';
import 'package:widgetbook_workspace/features/register/controller/regiter_cubit/register_cubit.dart';
import 'package:widgetbook_workspace/features/register/view/widgets/country_drop_down_widget.dart';
import 'package:widgetbook_workspace/features/register/view/widgets/custom_text_field.dart';
import 'package:widgetbook_workspace/features/register/view/widgets/header_widget.dart';
import 'package:widgetbook_workspace/features/register/view/widgets/terms_checkbox_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  @override
  void dispose() {
    context.read<RegisterCubit>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit=context.read<RegisterCubit>();
          return Scaffold(
            backgroundColor: UiColors.background,
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  constraints:   BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding: const EdgeInsets.all(48.0),
                  child: Form(
                    key: cubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Header
                        HeaderWidget(),
                        const SizedBox(height: 40),

                        // Full Name Field
                        customTextField(
                          controller: cubit.nameController,
                          label: 'Full Name',
                          hint: 'Enter your full name',
                          icon: Icons.person_outline,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            if (value.length < 3) {
                              return 'Name must be at least 3 characters';
                            }
                            return null;
                          },
                        ),
                        Inputs.password(
                          controller: cubit.nameController,
                          label: 'Full Name',
                          size: InputSize.lg,
                        ),
                        const SizedBox(height: 24),


                        // const SizedBox(height: 24),
                        //
                        // // Country Dropdown
                        // CountryDropDownWidget(cubit: cubit,),
                        // const SizedBox(height: 24),
                        //
                        // // Password Field
                        // customTextField(
                        //   controller: cubit.passwordController,
                        //   label: 'Password',
                        //   hint: 'Create a strong password',
                        //   icon: Icons.lock_outline,
                        //   obscureText: true,
                        //
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return 'Please enter a password';
                        //     }
                        //     if (value.length < 8) {
                        //       return 'Password must be at least 8 characters';
                        //     }
                        //     return null;
                        //   },
                        // ),
                        // const SizedBox(height: 24),
                        // // Confirm Password Field
                        // customTextField(
                        //   controller: cubit.confirmPasswordController,
                        //   label: 'Confirm Password',
                        //   hint: 'Re-enter your password',
                        //   icon: Icons.lock_outline,
                        //   obscureText: true,
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return 'Please confirm your password';
                        //     }
                        //     if (value != cubit.passwordController.text) {
                        //       return 'Passwords do not match';
                        //     }
                        //     return null;
                        //   },
                        // ),
                        // const SizedBox(height: 24),
                        // // Terms Checkbox
                        // TermsCheckboxWidget(registerCubit: cubit,),
                        // const SizedBox(height: 32),

                        // Submit Button
                        cubit.isLoading
                            ? Center(
                          child: CircularProgressIndicator(
                            color: UiColors.primary,
                          ),
                        )
                            : BaseButton(
                          borderColor: UiColors.primary,
                          text: 'Create Account',
                          onPressed: (){
                            cubit.handleSubmit(context);
                          },
                          backgroundColor: UiColors.primary,
                          textColor: UiColors.surface,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }


}