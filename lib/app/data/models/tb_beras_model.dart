class TbBerasModel {
  int? id;
  String namaBeras;
  String hargaPerkg;
  int stok;
  String createdAt;

  TbBerasModel({this.id, required this.namaBeras, required this.hargaPerkg, required this.stok, required this.createdAt});

  factory TbBerasModel.fromJson(Map<String, dynamic> json) => TbBerasModel(
        id: json['id'],
        namaBeras: json['nama_beras'],
        hargaPerkg: json['harga_perkg'],
        stok: json['stok'],
        createdAt: json['createdAt'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nama_beras'] = namaBeras;
    data['harga_perkg'] = hargaPerkg;
    data['stok'] = stok;
    data['createdAt'] = createdAt;
    return data;
  }
}
