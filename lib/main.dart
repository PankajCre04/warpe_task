import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mstblc/common/routes/pages.dart';
import 'package:mstblc/global.dart';
import 'package:mstblc/screens/application/application.dart';
import 'package:mstblc/screens/bloc_providers.dart';
import 'package:mstblc/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:mstblc/screens/welcome/welcome.dart';
import 'package:mstblc/screens/welcome/welcome_bloc/welcome_bloc.dart';

void main() async {
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppRoute.allBlocProvider(context)],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        //  home: ApplicationPages(),
        onGenerateRoute: AppRoute.GenerateRouteSetting,
      ),
    );
  }
}
