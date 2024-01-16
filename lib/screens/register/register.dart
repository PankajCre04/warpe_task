import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/screens/register/bloc/register_bloc.dart';
import 'package:mstblc/screens/register/register_controller.dart';

import '../common_widgets.dart';
import '../sign_in/widgets/sign_in_widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        title: const Text(
          "Register",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                    child: resuableText(
                        "Enter your details below & free sign up")),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      resuableText("Username"),
                      CommonTextField(
                        "Enter your user name",
                        "username",
                        "user",
                        (value) {
                          context
                              .read<RegisterBloc>()
                              .add(RegisterUsernameEvent(value));
                        },
                      ),
                      const SizedBox(height: 20),
                      resuableText("Email"),
                      CommonTextField(
                        "Enter your email address",
                        "email",
                        "user",
                        (value) {
                          context
                              .read<RegisterBloc>()
                              .add(RegisterEmailEvent(value));
                        },
                      ),
                      const SizedBox(height: 20),
                      resuableText("Password"),
                      CommonTextField(
                        "Enter your password",
                        "password",
                        "lock",
                        (value) {
                          context
                              .read<RegisterBloc>()
                              .add(RegisterPasswordEvent(value));
                        },
                      ),
                      const SizedBox(height: 20),
                      resuableText("Confirm Password  "),
                      CommonTextField(
                        "Confirm your password",
                        "password",
                        "lock",
                        (value) {
                          context
                              .read<RegisterBloc>()
                              .add(RegisterConfirmPasswordEvent(value));
                        },
                      ),
                      const SizedBox(height: 30),
                      LoginAndRegisterButton(
                        "Sign Up",
                        "login",
                        () {
                          RegisterController(context).handleEmailRegister();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
