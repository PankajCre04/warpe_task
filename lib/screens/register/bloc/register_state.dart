part of 'register_bloc.dart';

class RegisterState {
  final String username;
  final String email;
  final String password;
  final String consfirmPassword;

  const RegisterState(
      {this.username = "",
      this.email = "",
      this.password = "",
      this.consfirmPassword = ""});

  RegisterState copyWith(
      {String? username,
      String? email,
      String? password,
      String? consfirmPassword}) {
    return RegisterState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      consfirmPassword: consfirmPassword ?? this.consfirmPassword,
    );
  }
}
