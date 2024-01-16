import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/screens/register/register.dart';
import 'package:mstblc/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:mstblc/screens/sign_in/sign_in_controller.dart';
import 'package:mstblc/screens/sign_in/widgets/sign_in_widgets.dart';

import '../common_widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        title: const Text(
          "Log in",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildThirdPartyLogin(context),
            Center(child: resuableText("use your email account to login")),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  resuableText("Email"),
                  CommonTextField(
                    "Enter your email address",
                    "email",
                    "user",
                    (value) {
                      context.read<SignInBloc>().add(EmailEvent(value));
                    },
                  ),
                  const SizedBox(height: 20),
                  resuableText("Password"),
                  CommonTextField(
                    "Enter your password",
                    "password",
                    "lock",
                    (value) {
                      context.read<SignInBloc>().add(PasswordEvent(value));
                    },
                  ),
                  const SizedBox(height: 20),
                  forgotPassowrd(),
                  const SizedBox(height: 20),
                  LoginAndRegisterButton(
                    "Log in",
                    "login",
                    () {
                      print("object");
                      SignInController(context: context).handlesSignIn("email");
                    },
                  ),
                  const SizedBox(height: 30),
                  LoginAndRegisterButton(
                    "Sign up",
                    "register",
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return RegisterScreen();
                        }),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
