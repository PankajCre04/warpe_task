part of 'home_screen_bloc.dart';

class HomeScreenStates {
  final int index;
  const HomeScreenStates({this.index = 0});

  HomeScreenStates copyWith({int? index}) {
    return HomeScreenStates(index: index ?? this.index);
  }
}
