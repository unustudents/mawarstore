import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'tables.dart';

class DatabaseHelper {
  final dbName = 'db_mawarstore.db';
  final tables = [
    TbBeras.createTABLE,
    TbTransaksi.createTABLE,
  ];

  Future<Database> initDatabase() async {
    final dbPath = await getApplicationDocumentsDirectory();
    final path = join(dbPath.path, dbName);
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        for (var element in tables) {
          try {
            await db.execute(element);
            print("SQL : Success Created !");
          } catch (e) {
            print("SQL ${e.toString()}");
          }
        }
        // await db.execute(TbBeras.nameTABLE);
        // await db.execute(TbTransaksi.nameTABLE);
      },
    );
  }
}
