import '../datasources/database_helper.dart';
import '../datasources/tables.dart';
import '../models/tb_beras_model.dart';

class Repository {
  final DatabaseHelper dbHelper = DatabaseHelper();

  // Get Beras
  Future<List<TbBerasModel>> getBeras() async {
    final db = await dbHelper.initDatabase();
    final List<Map<String, Object?>> query = await db.query(TbBeras.nameTABLE);
    return query.map((e) => TbBerasModel.fromJson(e)).toList();
  }

  // Add Beras
  Future<int> addBeras(TbBerasModel data) async {
    final db = await dbHelper.initDatabase();
    return db.insert(TbBeras.nameTABLE, data.toJson());
  }

  // Update Beras
  Future<int> updateBeras(TbBerasModel data) async {
    final db = await dbHelper.initDatabase();
    return db.update(TbBeras.nameTABLE, data.toJson(), where: "id = ?", whereArgs: [data.id]);
  }

  // Delete Beras
  deleteBeras(int id) async {
    final db = await dbHelper.initDatabase();
    return db.delete(TbBeras.nameTABLE, where: "id = ?", whereArgs: [id]);
  }

  // Get Beras By ID
  Future<TbBerasModel> getBerasById(int id) async {
    final db = await dbHelper.initDatabase();
    final query = await db.query(TbBeras.nameTABLE, where: "id = ?", whereArgs: [id]);
    if (query.isNotEmpty) {
      return TbBerasModel.fromJson(query.first);
    } else {
      throw Exception("Beras dengan id = $id tidak di temukan");
    }
  }
}
