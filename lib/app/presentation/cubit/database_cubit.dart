import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

part 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit() : super(DatabaseInitial());
  Database? database;
  Future<void> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'mawar.db');

    if (await Directory(dirname(path)).exists()) {
      // await deleteDatabase(path);
      await Directory(dirname(path)).create(recursive: true);
      database = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        // When creating the db, create the table
        await db.execute(
            'CREATE TABLE wadah (id INTEGER PRIMARY KEY, name TEXT, value INTEGER)');
      });
      emit(LoadDatabaseState());
    } else {
      try {
        await Directory(dirname(path)).create(recursive: true);
        database = await openDatabase(path, version: 1,
            onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE wadah (id INTEGER PRIMARY KEY, name TEXT, value INTEGER)');
        });
        emit(LoadDatabaseState());
      } catch (e) {
        log(e.toString());
        print('Databases_cubit.dart = $e');
      }
    }
  }
}
