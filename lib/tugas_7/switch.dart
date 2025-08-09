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
          Text("Mode Gelap"),
          Row(
            children: [
              Switch(
                activeColor: Colors.red,
                value: isCheckSwitch,
                onChanged: (value) {
                  setState(() {
                    isCheckSwitch = value;
                  });
                },
              ),
              Text(isCheckSwitch == true ? "Hidup" : "Aktifkan Mode Gelap"),
            ],
          ),
        ],
      ),
    );
  }
}
