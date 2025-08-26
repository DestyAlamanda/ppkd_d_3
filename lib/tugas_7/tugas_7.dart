import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_10/tugas_10a.dart';
import 'package:ppkd_d_3/tugas_11/user_screen.dart';
import 'package:ppkd_d_3/tugas_14/jikan.dart';
import 'package:ppkd_d_3/tugas_6/tugas_6_flutter.dart';
import 'package:ppkd_d_3/tugas_7/checkbox.dart';
import 'package:ppkd_d_3/tugas_7/date_picker.dart';
import 'package:ppkd_d_3/tugas_7/dropdown.dart';
import 'package:ppkd_d_3/tugas_7/switch.dart';
import 'package:ppkd_d_3/tugas_7/time_picker.dart';
import 'package:ppkd_d_3/tugas_9/list.dart';
import 'package:ppkd_d_3/tugas_9/list_map.dart';
import 'package:ppkd_d_3/tugas_9/model.dart';

class TugasTujuh extends StatefulWidget {
  const TugasTujuh({super.key});

  @override
  State<TugasTujuh> createState() => _TugasTujuhState();
}

class _TugasTujuhState extends State<TugasTujuh> {
  int _selectedIndexDrawer = 0;
  static const List<String> _titles = [
    "Syarat & Ketentuan",
    "Mode Gelap / Terang",
    "PilihKategori Produk",
    "Pilih Tanggal Lahir",
    "Atur Pengingat",
    "List",
    "List Map",
    "Model",
    "Formulir Pendaftaran Kelas",
    "Data Penghuni Kos",
    "Jikan",
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    CheckBox(),
    Switch_(),
    DropDown(),
    DatePicker(),
    TimePicker(),
    ListKategori(),
    ListMap(),
    Model(),
    TugasSepuluhA(),
    TugasSebelas(),
    JikanAnime(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndexDrawer],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff21BDCA),
      ),
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      drawer: Drawer(
        backgroundColor: Color(0xff21BDCA),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white, // warna background header
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xff21BDCA),
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  SizedBox(height: 13),
                  Text(
                    'Hi, Manda',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("CheckBox"),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              title: Text("Switch"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("DropDown"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("DatePicker"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("TimePicker"),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              title: Text("List"),
              onTap: () {
                onItemTap(5);
              },
            ),
            ListTile(
              title: Text("List Map"),
              onTap: () {
                onItemTap(6);
              },
            ),
            ListTile(
              title: Text("Model"),
              onTap: () {
                onItemTap(7);
              },
            ),
            ListTile(
              title: Text("Formulir"),
              onTap: () {
                onItemTap(8);
              },
            ),
            ListTile(
              title: Text("Data Kos"),
              onTap: () {
                onItemTap(9);
              },
            ),
            ListTile(
              title: Text("Jikan"),
              onTap: () {
                onItemTap(10);
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TugasEnam()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
