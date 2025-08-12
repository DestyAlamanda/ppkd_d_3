import 'package:flutter/material.dart';

class ListKategori extends StatefulWidget {
  const ListKategori({super.key});

  @override
  State<ListKategori> createState() => _ListKategoriState();
}

class _ListKategoriState extends State<ListKategori> {
  final List<String> alatTulisKantor = [
    "Pensil",
    " Pulpen",
    "Spidol",
    "Correction Tape",
    "Buku",
    "Penggaris",
    "Penghapus",
    "Sticky Notes",
    "Highlighter",
    "Clip",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),

          shrinkWrap: true,
          itemCount: alatTulisKantor.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(alatTulisKantor[index]),
              leading: CircleAvatar(
                backgroundColor: Color(0xff21BDCA),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
