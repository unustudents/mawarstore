class TbBeras {
  // '''id nama_beras harga_perkg stok'''
  static const String nameTABLE = 'tb_beras';
  static String createTABLE = '''
  CREATE TABLE IF NOT EXISTS $nameTABLE(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nama_beras TEXT,
    harga_perkg TEXT,
    stok INTEGER,
    createdAt TEXT
  )
  ''';
  static String selectAll = "SELECT * FROM $nameTABLE";
}

class TbTransaksi {
  // id beras_id jumlah total tanggal
  static const String nameTABLE = 'tb_transaksi';
  static String createTABLE = '''
  CREATE TABLE IF NOT EXISTS $nameTABLE(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    beras_id TEXT,
    jumlah INTEGER,
    total INTEGER,
    tanggal TEXT,
    createdAt TEXT
  )
  ''';
  static String selectAll = "SELECT * FROM $nameTABLE";
}
