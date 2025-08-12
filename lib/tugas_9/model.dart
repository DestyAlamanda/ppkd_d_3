import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_9/models/produk_model.dart';

class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  final List<ProdukModel> daftarproduk = [
    ProdukModel(
      nama: 'Pensil',
      deskripsi: 'Berfungsi untuk menulis dan menggambar yang bisa dihapus.',
      gambar: 'assets/photos/pensil.jpg',
    ),
    ProdukModel(
      nama: 'Pulpen',
      deskripsi: 'Berfungsi untuk menulis dengan tinta permanen',
      gambar: 'assets/photos/pulpen.jpg',
    ),
    ProdukModel(
      nama: 'Spidol',
      deskripsi:
          'Berfungsi untuk menulis atau memberi tanda dengan garis tebal.',
      gambar: 'assets/photos/spidol.jpg',
    ),
    ProdukModel(
      nama: 'Correction Tape',
      deskripsi: 'Berfungsi untuk menutupi kesalahan tulisan di kertas.',
      gambar: 'assets/photos/CT.jpg',
    ),
    ProdukModel(
      nama: 'Buku',
      deskripsi: 'Berfungsi untuk mencatat.',
      gambar: 'assets/photos/buku.jpg',
    ),
    ProdukModel(
      nama: 'Penggaris',
      deskripsi: 'Berfungsi untuk mengukur dan membuat garis lurus.',
      gambar: 'assets/photos/penggaris.jpg',
    ),
    ProdukModel(
      nama: 'Penghapus',
      deskripsi: 'Berfungsi untuk menghapus tulisan pensil.',
      gambar: 'assets/photos/penghapus.jpg',
    ),
    ProdukModel(
      nama: 'Sticky Notes',
      deskripsi: 'Berfungsi untuk menulis catatan tempel sementara.',
      gambar: 'assets/photos/sticky.jpg',
    ),
    ProdukModel(
      nama: 'Highlighter ',
      deskripsi: 'Berfungsi untuk menandai teks penting dengan warna terang.',
      gambar: 'assets/photos/stabilo.jpg',
    ),
    ProdukModel(
      nama: 'Clip',
      deskripsi: 'Berfungsi untuk menjepit dan menggabungkan kertas.',
      gambar: 'assets/photos/clip.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daftarproduk.length,
      itemBuilder: (BuildContext context, int index) {
        final dataProdukModel = daftarproduk[index];
        return ListTile(
          title: Text(
            dataProdukModel.nama,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(dataProdukModel.deskripsi),
          trailing: CircleAvatar(
            backgroundImage: AssetImage(dataProdukModel.gambar),
          ),
          leading: CircleAvatar(
            backgroundColor: Color(0xff21BDCA),
            child: Text("${index + 1}", style: TextStyle(color: Colors.white)),
          ),
        );
      },
    );
  }
}
