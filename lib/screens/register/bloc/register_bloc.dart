import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterUsernameEvent>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<RegisterEmailEvent>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<RegisterPasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<RegisterConfirmPasswordEvent>((event, emit) {
      emit(state.copyWith(consfirmPassword: event.confirmPassword));
    });
  }
}
