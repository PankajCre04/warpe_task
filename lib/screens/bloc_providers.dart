import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/screens/register/bloc/register_bloc.dart';
import 'package:mstblc/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:mstblc/screens/welcome/welcome_bloc/welcome_bloc.dart';

class AppBlocProviders {
  static get getAllBlocProviders => [
        BlocProvider(create: (context) => WelcomeBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
      ];
}
