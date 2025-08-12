import 'dart:convert';

class ProdukModel {
  final String nama;
  final String deskripsi;
  final String gambar;
  ProdukModel({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'deskripsi': deskripsi,
      'gambar': gambar,
    };
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      nama: map['nama'] as String,
      deskripsi: map['deskripsi'] as String,
      gambar: map['gambar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
