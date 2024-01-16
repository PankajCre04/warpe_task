part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {
  const RegisterEvent();
}

class RegisterUsernameEvent extends RegisterEvent {
  final String username;
  const RegisterUsernameEvent(this.username);
}

class RegisterEmailEvent extends RegisterEvent {
  final String email;
  const RegisterEmailEvent(this.email);
}

class RegisterPasswordEvent extends RegisterEvent {
  final String password;
  const RegisterPasswordEvent(this.password);
}

class RegisterConfirmPasswordEvent extends RegisterEvent {
  final String confirmPassword;
  const RegisterConfirmPasswordEvent(this.confirmPassword);
}
