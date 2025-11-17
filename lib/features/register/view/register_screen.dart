import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unping_ui/features/register/controller/regiter_cubit/register_cubit.dart';
import 'package:unping_ui/features/register/view/widgets/country_drop_down_widget.dart';
import 'package:unping_ui/features/register/view/widgets/header_widget.dart';
import 'package:unping_ui/features/register/view/widgets/terms_checkbox_widget.dart';
import 'package:unping_ui/unping_ui.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


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
                        Inputs.text(
                          controller: cubit.nameController,
                          label: 'Full Name',
                          placeholder: 'Enter your full name',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          prefixIcon: Icons.person_outline,
                        ),
                        const SizedBox(height: 24),
                        // Phone Number Field
                        Inputs.text(
                          controller: cubit.phoneNumberController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          label: 'Full Name',
                          placeholder: 'Enter your phone number',
                          prefixIcon: Icons.phone_android_outlined,
                        ),
                        const SizedBox(height: 24),

                        // Email Field
                        Inputs.text(
                          controller: cubit.emailController,
                          label: 'Email Address',
                          placeholder: 'Enter your email address',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icons.email_outlined,
                        ),
                        const SizedBox(height: 24),
                        // Country Dropdown
                        CountryDropDownWidget(cubit: cubit,),
                        const SizedBox(height: 24),
                        // Password Field
                        Inputs.password(
                          controller: cubit.passwordController,
                          label: 'Password',
                          placeholder: 'Create your password',
                        ),
                        const SizedBox(height: 24),
                        // Terms Checkbox
                        TermsCheckboxWidget(registerCubit: cubit,),
                        const SizedBox(height: 32),
                        // Submit Button
                        cubit.isLoading
                            ? Center(
                          child: CircularProgressIndicator(
                            color: UiColors.primary,
                          ),
                        )
                            : BaseButton(
                          borderColor: UiColors.background,
                          text: 'Create Account',
                          onPressed: (){
                            cubit.handleSubmit(context);
                          },
                          backgroundColor: UiColors.neutral800,
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