import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/routes/names.dart';
import 'package:mstblc/global.dart';
import 'package:mstblc/screens/application/application.dart';
import 'package:mstblc/screens/application/bloc/application_bloc.dart';
import 'package:mstblc/screens/home/bloc/home_screen_bloc.dart';
import 'package:mstblc/screens/home/home_screen.dart';
import 'package:mstblc/screens/profile/settings/bloc/settings_bloc.dart';
import 'package:mstblc/screens/profile/settings/settings_screen.dart';
import 'package:mstblc/screens/register/bloc/register_bloc.dart';
import 'package:mstblc/screens/register/register.dart';
import 'package:mstblc/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:mstblc/screens/sign_in/signin_screen.dart';
import 'package:mstblc/screens/welcome/welcome.dart';
import 'package:mstblc/screens/welcome/welcome_bloc/welcome_bloc.dart';

// unify BlocProvider, routes and Pages

class AppRoute {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutesNames.INITIAL,
        page: WelcomeScreen(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
      PageEntity(
        route: AppRoutesNames.REGISTER,
        page: RegisterScreen(),
        bloc: BlocProvider(create: (_) => RegisterBloc()),
      ),
      PageEntity(
        route: AppRoutesNames.SIGNIN,
        page: SignInScreen(),
        bloc: BlocProvider(create: (_) => SignInBloc()),
      ),
      PageEntity(
        route: AppRoutesNames.APPLICATION,
        page: ApplicationPages(),
        bloc: BlocProvider(create: (_) => ApplicationBloc()),
      ),
      PageEntity(
        route: AppRoutesNames.HOME_PAGE,
        page: HomeScreen(),
        bloc: BlocProvider(create: (_) => HomeScreenBloc()),
      ),
      PageEntity(
        route: AppRoutesNames.SETTINGS,
        page: SettingsScreen(),
        bloc: BlocProvider(create: (_) => SettingsBloc()),
      ),
    ];
  }

  //return all the Bloc Providers
  static List<dynamic> allBlocProvider(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

  static MaterialPageRoute GenerateRouteSetting(RouteSettings settings) {
    if (settings.name != null) {
      // check for route name matching when navigation gets triggered
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (AppRoutesNames.INITIAL == result.first.route && deviceFirstOpen) {
          bool _isLoggesIn = Global.storageService.getIsLoggesIn();
          if (_isLoggesIn) {
            return MaterialPageRoute(
                builder: (_) => ApplicationPages(), settings: settings);
          }
          return MaterialPageRoute(
              builder: (_) => SignInScreen(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(
        builder: (_) => const SignInScreen(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;
  PageEntity({required this.route, required this.page, required this.bloc});
}
