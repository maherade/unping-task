import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:widgetbook_workspace/features/success_screen/view/success_screen.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String? selectedCountry;
  List<String> selectedInterests = [];
  bool agreeToTerms = false;
  bool isLoading = false;
  final List<String> countries = [
    'Egypt',
    'Germany',
    'United States',
    'United Kingdom',
    'Canada',
    'Australia',
    'France',
    'Japan',
    'Brazil',
    'India',
    'Other',
  ];

  void handleSubmit(BuildContext context) {
    if (formKey.currentState!.validate() && agreeToTerms) {
      isLoading = true;
      emit(RegisterLoading());
      // Simulate API call
      Future.delayed(const Duration(seconds: 2), () {
         isLoading = false;
         emit(RegisterSuccess());
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => SuccessScreen(
              name: nameController.text,
              email: emailController.text,
            ),
          ),
        );
      });
    } else if (!agreeToTerms) {
      isLoading = false;
      emit(RegisterError());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please agree to the terms and conditions'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void changeCheckboxValue(bool value) {
    agreeToTerms = value;
    emit(RegisterInitial());
  }

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }


}
