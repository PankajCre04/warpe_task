import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/routes/names.dart';
import 'package:mstblc/common/values/constant.dart';
import 'package:mstblc/common/widgets/flutter_toast.dart';
import 'package:mstblc/global.dart';
import 'package:mstblc/screens/sign_in/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;
  SignInController({required this.context});

  Future<void> handlesSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        final String email = state.email;
        final String password = state.password;
        if (email.isEmpty) {}
        if (password.isEmpty) {}
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          if (credential.user == null) {
            toastInfo(msg: "::: not exists");
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "::: not verified");
            return;
          }

          User user = credential.user!;
          if (user != null) {
            Global.storageService
                .setString(AppConstants.STORAGE_USER_TOKEN_KEY, "123456");
            Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutesNames.APPLICATION, (route) => false);
            toastInfo(msg: "::: User Exists");
            return;
          } else {
            toastInfo(msg: "::: Firebase Error");
            return;
          }
        } on FirebaseAuthException catch (error) {
          if (error.code == "user-not-found") {
            toastInfo(msg: "::: No user Found");
            return;
          } else if (error.code == "wrong-password") {
            toastInfo(msg: "::: Wrong Password");
            return;
          } else if (error.code == "invalid-email") {
            toastInfo(msg: "::: Invalid email");
            return;
          }
        }
      }
    } catch (error) {}
  }
}
