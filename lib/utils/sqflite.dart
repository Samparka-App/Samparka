import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:async/async.dart';
import 'package:samparka/models/models.dart';

class DatabaseHelper {
  static final DatabaseHelper _databaseHelper = DatabaseHelper._createInstance();
  DatabaseHelper._createInstance();
  factory DatabaseHelper() => _databaseHelper;
  static late Database _db;

  String TableName = "Todos";
  String id = "ID";
  String todo = "Todo";
  String completed = "Completed";
  String userId = "User ID";

  void _createDb(Database db, int newVersion)async{
  await db.execute('CREATE TABLE $TableName($id INTEGER PRIMARY KEY, $todo TEXT,$completed TEXT,$userId INTEGER)');
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "TodosDB.db");
    _db = await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<Database> get db async{
    if(_db==null){
      await initDb();
    }
    return _db;
  }

  //Fetch operation
  getTodos()async{
    Database db = await this.db;
    var result = await db.rawQuery("Select * from $TableName");
  }
}