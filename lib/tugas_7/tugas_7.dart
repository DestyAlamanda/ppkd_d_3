import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_6/tugas_6_flutter.dart';
import 'package:ppkd_d_3/tugas_7/checkbox.dart';
import 'package:ppkd_d_3/tugas_7/date_picker.dart';
import 'package:ppkd_d_3/tugas_7/dropdown.dart';
import 'package:ppkd_d_3/tugas_7/switch.dart';
import 'package:ppkd_d_3/tugas_7/time_picker.dart';

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
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    CheckBox(),
    Switch_(),
    DropDown(),
    DatePicker(),
    TimePicker(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    // context.pop();
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
