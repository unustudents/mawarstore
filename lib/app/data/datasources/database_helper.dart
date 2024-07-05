import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'tables.dart';

class DatabaseHelper {
  final dbName = 'db_mawarstore.db';

  Future<Database> initDatabase() async {
    final dbPath = await getApplicationDocumentsDirectory();
    final path = join(dbPath.path, dbName);
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(TbBeras.titleTable);
        await db.execute(TbTransaksi.titleTable);
      },
    );
  }
}
