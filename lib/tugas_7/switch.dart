import 'package:flutter/material.dart';

class Switch_ extends StatefulWidget {
  const Switch_({super.key});

  @override
  State<Switch_> createState() => _Switch_State();
}

class _Switch_State extends State<Switch_> {
  bool isCheckSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isCheckSwitch == true ? Colors.black : Colors.white,
      child: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(10)),
          Row(
            children: [
              Switch(
                activeColor: Color(0xff21BDCA),
                value: isCheckSwitch,
                onChanged: (value) {
                  setState(() {
                    isCheckSwitch = value;
                  });
                },
              ),
              Text(
                isCheckSwitch == true
                    ? "Aktifkan Mode Terang"
                    : "Aktifkan Mode Gelap",
                style: TextStyle(
                  color: isCheckSwitch ? Colors.white : Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              isCheckSwitch ? "Mode gelap aktif" : "Mode terang aktif",
              style: TextStyle(
                color: isCheckSwitch ? Colors.white : Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
