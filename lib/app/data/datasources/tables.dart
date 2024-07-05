class TbBeras {
  // '''id nama_beras harga_perkg stok'''
  static String titleTable = 'tb_beras';
  static String noteTable = '''
  CREATE TABLE IF NOT EXISTS $titleTable(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nama_beras TEXT,
    harga_perkg TEXT,
    stok INTEGER,
    createdAt TEXT
  )
  ''';
}

class TbTransaksi {
  // id beras_id jumlah total tanggal
  static String titleTable = 'tb_transaksi';
  static String noteTable = '''
  CREATE TABLE IF NOT EXISTS $noteTable(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    beras_id TEXT,
    jumlah INTEGER,
    total INTEGER,
    tanggal TEXT,
    createdAt TEXT
  )
  ''';
}
