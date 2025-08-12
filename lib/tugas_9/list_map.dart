import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMap extends StatefulWidget {
  const ListMap({super.key});

  @override
  State<ListMap> createState() => _ListMapState();
}

class _ListMapState extends State<ListMap> {
  final List<Map<String, dynamic>> produk = [
    {"nama": "Pensil", "icon": CupertinoIcons.pencil},
    {"nama": "Pulpen", "icon": CupertinoIcons.pen},
    {"nama": "Spidol", "icon": CupertinoIcons.pencil_outline},
    {"nama": "Correction Tape", "icon": CupertinoIcons.bandage},
    {"nama": "Buku", "icon": CupertinoIcons.book},
    {"nama": "Penggaris", "icon": CupertinoIcons.rectangle},
    {"nama": "Penghapus", "icon": CupertinoIcons.rectangle},
    {"nama": "Sticky Notes", "icon": CupertinoIcons.doc_text},
    {"nama": "Highlighter", "icon": CupertinoIcons.pencil},
    {"nama": "Clip", "icon": CupertinoIcons.paperclip},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: produk.length,
          itemBuilder: (BuildContext context, int index) {
            final dataProduk = produk[index];
            return ListTile(
              leading: Icon(dataProduk["icon"]),
              title: Text(dataProduk["nama"]),
            );
          },
        ),
      ],
    );
  }
}
