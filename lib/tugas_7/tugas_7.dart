import 'package:flutter/material.dart';
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
          "Formulir",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff21BDCA),
      ),
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      drawer: Drawer(
        child: ListView(
          children: [
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
          ],
        ),
      ),
      // endDrawer: Drawer(child: Column(children: [])),
    );
  }
}
