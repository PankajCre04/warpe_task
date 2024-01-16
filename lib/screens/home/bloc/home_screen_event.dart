part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class HomePageDots extends HomeScreenEvent {
  final int index;
  HomePageDots(this.index);
}
