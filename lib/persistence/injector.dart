import 'dart:async';
import 'package:injector/injector.dart';
import 'package:samparka/persistence/sqflite.dart';

class Injection {
  static DatabaseHelper _databaseHelper = DatabaseHelper();
  static late Injector injector;
  static Future initInjection() async {
    await _databaseHelper.initDb();
    injector = Injector.getInjector();
    injector.map<DatabaseHelper>((i) => _databaseHelper,
        isSingleton: true);
  }
}
