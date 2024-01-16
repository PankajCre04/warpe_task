import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenStates> {
  HomeScreenBloc() : super(HomeScreenStates()) {
    on<HomePageDots>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
