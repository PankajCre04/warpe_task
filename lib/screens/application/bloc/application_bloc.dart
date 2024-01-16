import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, AppStates> {
  ApplicationBloc() : super(const AppStates()) {
    on<TriggerApplicationEvent>((event, emit) {
      emit(AppStates(index: event.index));
    });
  }
}
