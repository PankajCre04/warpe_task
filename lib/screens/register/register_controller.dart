import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/widgets/flutter_toast.dart';

import 'bloc/register_bloc.dart';

class RegisterController {
  final BuildContext context;
  const RegisterController(this.context);
  Future<void> handleEmailRegister() async {
    final state = context.read<RegisterBloc>().state;
    final String userName = state.username;
    final String email = state.email;
    final String password = state.password;
    final String confirmPassword = state.consfirmPassword;
    if (userName.isEmpty) {
      toastInfo(msg: "Username is Empty");
      return;
    } else if (password.isEmpty) {
      toastInfo(msg: "Password is Empty");
      return;
    } else if (email.isEmpty) {
      toastInfo(msg: "Email is Empty");
      return;
    } else if (confirmPassword.isEmpty) {
      toastInfo(msg: "Confirm Password is Empty");
      return;
    }
    try {
      final UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(msg: "Verify your email address");
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "weak-password") {
        toastInfo(msg: "Weak Password");
      }
      if (error.code == "email-already-in-use") {
        toastInfo(msg: "Email already in use  ");
      }
      if (error.code == "invalid-email") {
        toastInfo(msg: "Invalid Email");
      }
    }
  }
}
