import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:mstblc/common/routes/bloc_observer.dart';
import 'package:mstblc/common/service/storage_service.dart';

class Global {
  static late StorageService storageService;
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyGlobalObserver();
    await Firebase.initializeApp();
    storageService = await StorageService().init();
  }
}
