import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mstblc/screens/application/bloc/application_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingState> {
  SettingsBloc() : super(SettingState()) {
    on<TriggerSettingsEvent>((event, emit) {
      emit(SettingState());
    });
  }
}
